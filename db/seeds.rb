# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Populating database'
20.times do
  name = Faker::Food.fruits
  new_ingredient = Ingredient.new(name: name)
  new_ingredient.save
end
20.times do
  name = Faker::Food.ingredients
  new_ingredient = Ingredient.new(name: name)
  new_ingredient.save
end
puts 'Done!'
