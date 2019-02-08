class Food < ApplicationRecord
    validates :name, :ingredient, :price, presence:true
    validates :price, numericality:true
end
