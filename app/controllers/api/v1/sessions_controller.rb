class Api::V1::SessionsController < ApplicationController
  skip_before_action :logged_in_user, only: %i[create logged_in]

  def create
    user = User.find_by_email(session_params[:email])

    if user&.authenticate(session_params[:password])
      session[:user_id] = user.id
      render json: {
        status: :created,
        logged_in: true,
        user: { id: user.id, name: user.name }
      }
    else
      render json: { status: 401 }
    end
  end

  def logged_in
    if logged_in?
      render json: {
        logged_in: true,
        user: { id: current_user[:id], name: current_user[:name] }
      }
    else
      render json: {
        logged_in: false
      }
    end
  end

  def logout
    session.delete(:user_id)
    render json: {
      status: 200,
      logged_in: false
    }
  end

  private

  def session_params
    params.require(:user).permit(:email, :password)
  end
end
