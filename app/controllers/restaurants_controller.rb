class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.order(:name)
    @restaurants = Restaurant.all
end

  def show
  end
end
