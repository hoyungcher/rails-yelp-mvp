# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Dropping database'

Restaurant.destroy_all

puts 'Seeding...'

10.times do
  categories = ["chinese", "italian", "japanese", "french", "belgian"]
  Restaurant.create!(name: Faker::Restaurant.name, address: Faker::Address.full_address, category: categories.sample, phone_number: Faker::PhoneNumber.cell_phone)
end

puts 'Completed seeding'
