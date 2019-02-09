# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Food.destroy_all
Restaurant.destroy_all
10.times do
    restaurant = Restaurant.create(name: Faker::Company.unique.name,
                                address: Faker::Address.street_address)

    restaurant.foods.create(dish: Faker::Food.unique.dish,
                            ingredient: Faker::Food.ingredient,
                            spice: Faker::Food.spice,
                            price: Faker::Number.decimal(2)
                            )
end
puts "Restaurants in database #{Restaurant.count}"
puts "Foods in database #{Food.count}"