# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Cocktail.destroy_all
Ingredient.destroy_all

10.times do
  Cocktail.create!(
    name: Faker::Superhero.name
    )
end


10.times do
  Ingredient.create!(
    name: Faker::Food.fruits
    )
end

# Cocktail.create!(cocktails_attributes)
# Ingredient.create!(ingredients_attributes)

puts 'Finished!'
