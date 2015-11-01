# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Catagory.delete_all
@catagories = []
@catagories << Catagory.create!(name: 'Starter' )
@catagories << Catagory.create!(name: 'Main')
@catagories << Catagory.create!(name: 'Desert')

Recipe.delete_all
recipe_name = ['Egg Omlet', 'Pancake', 'Muffins', 'Tufo', 'Pizza', 'Corma']
recipe_instructions = ['Use your brain', 'Bla bla bla', 'Ask your wife/girlfriend to cook it', 'Cream shortening, eggs and sugar; add --', 'Cooking is not for you', 'Seriously!!']

# @catagories.each do |c|
#   2.times do |i|
#     Recipe.create!(name: recipe_name.sample, instructions: recipe_instructions.sample, catagory_id: 'c.id')
#   end
# end

@catagories.each_with_index do |c, index|
  Recipe.create!(name: recipe_name[index], instructions: recipe_instructions[index], catagory_id: 'c.id')
end



# @catagories.each do |c|
#   2.times do |i|
#     Recipe.create!(name: Faker::Name.name, instructions: Faker::Lorem.sentence, catagory_id: 'c.id')
#     # binding.pry
#   end
# end

Ingredient.delete_all

Ingredient.create!(name: 'Egg', quantity: '1', unit: '1')
Ingredient.create!(name: 'Onion', quantity: '3', unit: '1')
Ingredient.create!(name: 'Butter', quantity: '5', unit: '1')