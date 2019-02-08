class ApplicationController < ActionController::Base
    before_action :def_food


def def_food
    @foods = Food.all
end
end
