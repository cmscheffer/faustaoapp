# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#
require "open-uri"

puts "Deleting users and organs..."

Order.destroy_all
Organ.destroy_all
User.destroy_all

puts "Users and organs deletados com sucesso!"
puts "Creating users and organs..."

DESCRIPTION_ARRAY = [
  "Organ responsible for pumping blood throughout the body.",
  "Organs that allow the exchange of oxygen and carbon dioxide with the air.",
  "Organ that processes nutrients and detoxifies substances in the blood.",
  "Organs that filter the blood, removing waste and regulating fluids and electrolytes.",
  "Organ that aids in digestion and regulates blood sugar levels.",
  "Part of the digestive system where nutrient absorption occurs."
]
ORGANS_ARRAY = [
  "Robotic Heart",
  "Robotic Lungs",
  "Robotic Liver",
  "Robotic Kidneys",
  "Robotic Pancreas",
  "Robotic Small Intestine"
]

10.times do |u|
    user = User.create!(
    name: Faker::Name.name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.unique.email,
    password: "teste123"
  )

  2.times do |o|
    organ = Organ.create!(
  5.times do |o|
      Organ.create!(
      name: ORGANS_ARRAY.sample,
      description: DESCRIPTION_ARRAY.sample,
      price: rand(100..10000),
      age: rand(18..60),
      robot_type: Organ.robot_type.sample,
      user: user
    )
  )
    file = URI.parse(Faker::Avatar.image).open
    organ.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

  end
end

puts "Users and organs successfully created."
puts "Users and organs successfully created."
