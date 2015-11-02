# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.delete_all
@categories = []
@categories << Category.create!(name: 'Starter' )
@categories << Category.create!(name: 'Main')
@categories << Category.create!(name: 'Desert')

Recipe.delete_all
recipe_name = ['Egg Omlet', 'Pancake', 'Muffins', 'Tufo', 'Pizza', 'Corma']
recipe_instructions = ['Use your brain', 'Bla bla bla', 'Ask your wife/girlfriend to cook it', 'Cream shortening, eggs and sugar; add --', 'Cooking is not for you', 'Seriously!!']

# @categories.each do |c|
#   2.times do |i|
#     Recipe.create!(name: recipe_name.sample, instructions: recipe_instructions.sample, category_id: 'c.id')
#   end
# end

@categories.each_with_index do |c, index|
  Recipe.create!(name: recipe_name[index], instructions: recipe_instructions[index], category_id: 'c.id')
end



# @categories.each do |c|
#   2.times do |i|
#     Recipe.create!(name: Faker::Name.name, instructions: Faker::Lorem.sentence, category_id: 'c.id')
#     # binding.pry
#   end
# end

Ingredient.delete_all

Ingredient.create!(name: 'Egg', quantity: '1', unit: '1')
Ingredient.create!(name: 'Onion', quantity: '3', unit: '1')
Ingredient.create!(name: 'Butter', quantity: '5', unit: '1')