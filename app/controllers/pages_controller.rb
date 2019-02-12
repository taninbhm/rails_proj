class PagesController < ApplicationController
    def home
        @restaurants =  Restaurant.all
    end
    def about
    end
end
