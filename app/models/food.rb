class Food < ApplicationRecord
    belongs_to :restaurant
    validates :dish, :ingredient, :price, presence:true
    validates :price, numericality:true
end
