# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

100.times do
  City.create!(city_name: Faker::Address.city)
end

100.times do
  Dog.create!(dog_name: Faker::Dog.name, city_id: rand(1..(City.all.count)))
end

100.times do
  Dogsitter.create!(last_name: Faker::Name.name, first_name: Faker::Name.name, city_id: rand(1..(City.all.count)))
end

100.times do
  Stroll.create!(date: Faker::Date.forward(23), dog_id: rand(1..(Dog.all.count)), dogsitter_id: rand(1..(Dogsitter.all.count)) ,city_id: rand(1..5))
end