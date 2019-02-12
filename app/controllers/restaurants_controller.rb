class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.order(:name)
    @restaurants = Restaurant.all
end

  def show
    @restaurant = Restaurant.includes(:foods).find(params[:id])
  end
end
