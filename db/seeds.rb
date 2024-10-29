# db/seeds/organs.rb

Organ.destroy_all

organs = [
  { name: "Coração", description: "Responsável por bombear o sangue por todo o corpo", price: 50000, age: 30, bloody_type: "O+", img_url: "https://example.com/coracao.jpg" },
  { name: "Fígado", description: "Filtra toxinas do sangue", price: 45000, age: 25, bloody_type: "A-", img_url: "https://example.com/figado.jpg" },
  { name: "Rim", description: "Regula o equilíbrio de fluidos e eletrólitos", price: 30000, age: 28, bloody_type: "B+", img_url: "https://example.com/rim.jpg" },
  { name: "Pulmão", description: "Essencial para a respiração e troca de oxigênio", price: 40000, age: 35, bloody_type: "AB-", img_url: "https://example.com/pulmao.jpg" },
  { name: "Pâncreas", description: "Regula os níveis de açúcar no sangue", price: 35000, age: 40, bloody_type: "O-", img_url: "https://example.com/pancreas.jpg" },
  { name: "Intestino", description: "Auxilia na digestão e absorção de nutrientes", price: 25000, age: 22, bloody_type: "A+", img_url: "https://example.com/intestino.jpg" },
  { name: "Pele", description: "Protege o corpo de fatores externos", price: 20000, age: 29, bloody_type: "B-", img_url: "https://example.com/pele.jpg" },
  { name: "Estômago", description: "Digiere alimentos através de ácidos gástricos", price: 22000, age: 33, bloody_type: "AB+", img_url: "https://example.com/estomago.jpg" },
  { name: "Cérebro", description: "Controla o sistema nervoso e funções do corpo", price: 100000, age: 40, bloody_type: "O+", img_url: "https://example.com/cerebro.jpg" },
  { name: "Baço", description: "Ajuda na filtragem do sangue e na imunidade", price: 25000, age: 27, bloody_type: "A-", img_url: "https://example.com/baco.jpg" }
]

organs.each do |organ|
  Organ.create!(organ)
end

puts "Seed de órgãos criada com sucesso!"
