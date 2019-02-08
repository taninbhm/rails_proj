class Food < ApplicationRecord
    validates :dish, :ingredient, :price, presence:true
    validates :price, numericality:true
end
