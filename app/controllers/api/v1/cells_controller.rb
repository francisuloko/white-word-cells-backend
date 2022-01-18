class Api::V1::CellsController < ApplicationController
  before_action :set_cell, only: %i[show update destroy]

  def index
    @cells = @current_user.cells
    render json: @cells
  end

  def show
    render json: @cell
  end

  def create
    @cell = @current_user.cells.build(cell_params)

    if @cell.save
      render json: @cell, status: :created
    else
      render json: @cell.errors, status: :unprocessable_entity
    end
  end

  def update
    if @cell.update(cell_params)
      render json: @cell
    else
      render json: @cell.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @cell.destroy
  end

  private

  def set_cell
    @cell = @current_user.cells.find_by_id(params[:id])
  end

  def cell_params
    params.permit(:id, :title, :description)
  end
end
