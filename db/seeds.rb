# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
noodle = {name: "Noodlez", address: "7 Boundary St, London E2 7JE", category: 'chinese', phone_number: '0123456789'}
pizza =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: 'italian', phone_number: '0123456789'}
sushi =  {name: "Sushi Me", address: "56A Shoreditch High St, London E1 6PQ", category: 'japanese', phone_number: '0123456789'}
cassoulet =  {name: "Cassolette", address: "56A Shoreditch High St, London E1 6PQ", category: 'french', phone_number: '0123456789'}
gauffre =  {name: "C'te gauffre", address: "56A Shoreditch High St, London E1 6PQ", category: 'belgian', phone_number: '0123456789'}

[noodle, pizza, sushi, cassoulet, gauffre].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
