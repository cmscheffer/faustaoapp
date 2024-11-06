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
puts "Deletando users and organs..."
User.destroy_all
Organ.destroy_all
puts "Users and organs deletados com sucesso!"

puts "Criando users and organs..."

DESCRIPTION_ARRAY = [
  "Órgão responsável por bombear sangue para todo o corpo.",
  "Órgãos que permitem a troca de oxigênio e dióxido de carbono com o ar.",
  "Órgão que processa nutrientes e desintoxica substâncias no sangue.",
  "Órgãos que filtram o sangue, removendo resíduos e regulando líquidos e eletrólitos.",
  "Órgão que ajuda na digestão e regula os níveis de açúcar no sangue.",
  "Parte do sistema digestivo onde ocorre a absorção de nutrientes."
]
ORGANS_ARRAY = [
  "Coração Robotico",
  "Pulmões Robotico",
  "Fígado Robotico",
  "Rins Robotico",
  "Pâncreas Robotico",
  "Intestino Delgado Robotico"
]

5.times do |u|
    user = User.create!(
    name: Faker::Name.name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.unique.email,
    password: "teste123"
  )
  2.times do |o|
      Organ.create!(
      name: ORGANS_ARRAY.sample,
      description: DESCRIPTION_ARRAY.sample,
      price: rand(100..10000),
      age: rand(18..60),
      robot_type: Organ.robot_type.sample,
      img_url: Faker::Avatar.image,
      user: user
    )
  end
end

puts "Users and organs criados com sucesso!"
