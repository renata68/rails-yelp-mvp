# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# 1. clean the database
puts "Cleaning database..."
Restaurant.destroy_all

# 2. create the instances
puts "Creating restaurants..."
restaurant = Restaurant.create!(name: "Sushi Place", address: "Tokyo Street 1", phone_number: "123456789", category: "japanese")
puts "Created #{restaurant.name}"

restaurant = Restaurant.create!(name: "La Pasta", address: "Rome Avenue 10", phone_number: "987654321", category: "italian")
puts "Created #{restaurant.name}"

restaurant = Restaurant.create!(name: "Chez Pierre", address: "Paris Lane 5", phone_number: "555555555", category: "french")
puts "Created #{restaurant.name}"

restaurant = Restaurant.create!(name: "Wok Master", address: "Beijing Road 3", phone_number: "444444444", category: "chinese")
puts "Created #{restaurant.name}"

restaurant = Restaurant.create!(name: "Brussels Bites", address: "Brussels Square 2", phone_number: "333333333", category: "belgian")
puts "Created #{restaurant.name}"

# 3.display a message
puts "Finished! Created #{Restaurant.count} restaurants."
