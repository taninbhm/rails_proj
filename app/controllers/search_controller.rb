class SearchController < ApplicationController
    def results
        @query = params[:q]
        @foods = Food.where('dish LIKE ?', "%#{@query}%")
    end
end
