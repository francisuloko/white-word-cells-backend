class Api::V1::UsersController < ApplicationController
  skip_before_action :logged_in_user, only: :create
  before_action :set_user, only: %i[edit update destroy]

  def create
    user = User.new(user_params)

    if user.save
      session[:user_id] = user.id
      render json: {
        status: :created,
        logged_in: true,
        user: { id: user.id, name: user.name }
      }
    else
      render json: {
        status: 401,
        error: 'Account already exists.'
      }
    end
  rescue StandardError
    'Account already exists.'
  end

  def edit
    render json: @user
  end

  def update
    user = User.find_by_email(user_params[:email])

    if user&.authenticate(user_params[:password])
      @user.update(
        name: user_params[:name],
        password: user_params[:newPassword]
      )
      render json: @user
    else
      render json: @cell.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @user.delete
  end

  private

  def set_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :newPassword)
  end
end
