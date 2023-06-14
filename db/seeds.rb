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
noodle = {name: "Noodlez", address: "7 Boundary St, London E2 7JE", category: 'chinese'}
pizza =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: 'italian'}
sushi =  {name: "Sushi Me", address: "56A Shoreditch High St, London E1 6PQ", category: 'japanese'}
cassoulet =  {name: "Cassolette", address: "56A Shoreditch High St, London E1 6PQ", category: 'french'}
gauffre =  {name: "C'te gauffre", address: "56A Shoreditch High St, London E1 6PQ", category: 'belgian'}

[noodle, pizza, sushi, cassoulet, gauffre].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
