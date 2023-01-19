class ToysController < ApplicationController
  wrap_parameters format: []

  def create
    toy = Toy.create(toy_params)
    render json: toy, status: :created
  end
  
  def index
    toys = Toy.all
    render json: toys
  end

  def update
    byebug
    toy = Toy.find_by(params[:id])
    toy.update(toy_params)
  end

  def destroy
    toy = Toy.find_by(params[:id])
    toy.destroy
    head :no_content
  end

  private
  
  def toy_params
    params.permit(:name, :image, :likes)
  end

end
