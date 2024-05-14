# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Gym.create(
  name: 'SBG Ireland',
  number_of_champions: 1,
  holds_current_champion: false
)

Gym.create(
  name: 'American Kickboxing Academy San Jose',
  number_of_champions: 7,
  holds_current_champion: true
)

Fighter.create(
  name: 'Khabib Nurmagomedov',
  age: 34,
  style: 'Wrestling',
  active: false
)

Fighter.create(
  name: 'Conor McGregor',
  age: 34,
  style: 'Striking',
  active: true
)

  Fighter.create(
  name: 'Daniel Cormier',
  age: 45,
  style: 'Wrestling',
  active: false
)