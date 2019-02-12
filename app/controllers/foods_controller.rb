class FoodsController < ApplicationController
    def index
        @foods = Food.includes(:restaurant).order(:price)
        @foods = Food.all
    end
    def show
        @food = Food.find(params[:id])
    end
end
