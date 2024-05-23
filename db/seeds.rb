# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
grabuge = { name: 'Grabuge', address: ' 179 chaussée de waterloo, 1060 Saint-Gilles', phone_number: '026586548', category: 'japanese' }
dillens = { name: 'Dillens', address: 'Pl. Julien Dillens 11, 1060 Saint-Gilles', phone_number: '025383136', category: 'belgian' }
hummus_hortence = { name: 'HummusxHortence', address: 'Rue de Vergnies 2, 1050 Bruxelles', phone_number: '0484477757', category: 'french' }

[grabuge, dillens, hummus_hortence].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
