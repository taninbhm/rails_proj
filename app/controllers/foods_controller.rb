class FoodsController < ApplicationController
    def index
        @foods = Food.order(:price)
        @foods = Food.all
    end
    def show
    end
end
