# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

5.times do
  categories = ["Chinese", "Italian", "Japanese", "French", "Belgian"].sample
  new_restaurant = Restaurant.new(name: Faker::Name.name, address: Faker::Address.street_name, phone_number: Faker::PhoneNumber.cell_phone, category: categories)
  new_restaurant.save
  puts "all done"
end


