# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Food.destroy_all

10.times do
    Food.create(
        dish:Faker::Food.unique.dish,
        ingredient:Faker::Food.ingredient,
        spice:Faker::Food.spice,
        price:Faker::Commerce.price(range = 10..40.0, as_string = false)
    )
end

puts "beers in database #{Food.count}"