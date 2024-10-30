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
puts "Criando órgãos..."

Organ.create!(
  [
    {
      name: "Coração",
      description: "Órgão saudável, em perfeito estado.",
      price: 5000,
      age: 25,
      bloody_type: "O+",
      img_url: "https://img.freepik.com/vetores-premium/anatomia-do-coracao-coracao-humano-delineado-desenho-detalhado-de-um-coracao-medico_641602-449.jpg?w=2000"
    },
    {
      name: "Pulmão",
      description: "Órgão funcional, com sinais de envelhecimento.",
      price: 4000,
      age: 45,
      bloody_type: "A+",
      img_url: "https://st3.depositphotos.com/5671012/13720/v/950/depositphotos_137202262-stock-illustration-human-lungs-anatomy-for-asthma.jpg"
    },
    {
      name: "Rim",
      description: "Órgão saudável, jovem e forte.",
      price: 3000,
      age: 30,
      bloody_type: "B-",
      img_url: "https://thumbs.dreamstime.com/b/imagem-vetorial-colorida-do-rim-d-no-corpo-humano-para-educa%C3%A7%C3%A3o-da-anatomia-e-doen%C3%A7a-sistema-renal-219315272.jpg"
    },
    {
      name: "Fígado",
      description: "Órgão com histórico de abuso de álcool, precisa de monitoramento.",
      price: 6000,
      age: 50,
      bloody_type: "AB+",
      img_url: "https://static.mundoeducacao.uol.com.br/mundoeducacao/2023/03/ilustracao-do-figado-humano-orgao-que-produz-a-bile.jpg"
    },
    {
      name: "Cérebro",
      description: "Órgão saudável e em boas condições cognitivas.",
      price: 8000,
      age: 40,
      bloody_type: "O-",
      img_url: "http://eslasalud.com/wp-content/uploads/2013/11/cerebro-imagen.jpg"
    },
    {
      name: "Estômago",
      description: "Órgão funcional, sinais de desgaste.",
      price: 2500,
      age: 55,
      bloody_type: "B+",
      img_url: "https://s2.static.brasilescola.uol.com.br/be/2020/05/estomago.jpg"
    },
    {
      name: "Pâncreas",
      description: "Órgão saudável, sem complicações.",
      price: 4500,
      age: 28,
      bloody_type: "A-",
      img_url: "https://mejorconsalud.as.com/wp-content/uploads/2018/01/partes-pancreas-organo.jpg"
    },
    {
      name: "Baço",
      description: "Órgão com leve inflamação, precisa de acompanhamento.",
      price: 2000,
      age: 60,
      bloody_type: "AB-",
      img_url: "https://thumbs.dreamstime.com/b/vetor-de-ba%C3%A7o-isolado-anatomia-humana-interna-%C3%B3rg%C3%A3os-conceito-ci%C3%AAncia-e-medicina-parte-do-sistema-imunit%C3%A1rio-194112396.jpg"
    },
    {
      name: "Intestino",
      description: "Órgão em boas condições, leve desgaste com a idade.",
      price: 3000,
      age: 35,
      bloody_type: "O+",
      img_url: "https://s4.static.brasilescola.uol.com.br/img/2018/12/intestino.jpg"
    },
    {
      name: "Vesícula Biliar",
      description: "Órgão saudável, sem pedras.",
      price: 1500,
      age: 32,
      bloody_type: "A+",
      img_url: "https://st3.depositphotos.com/1067125/12541/v/950/depositphotos_125416830-stock-illustration-gallbladder-cross-section-anatomy-bright.jpg"
    }
  ]
)
