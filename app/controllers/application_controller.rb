class ApplicationController < ActionController::Base
    before_action :def_food
    before_action :def_restaurant

def def_food
    @foods = Food.all
end
def def_restaurant
    @restaurants =  Restaurant.all
end

end
