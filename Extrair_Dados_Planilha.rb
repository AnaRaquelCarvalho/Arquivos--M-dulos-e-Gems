puts'-' * 60
puts'UTILIZANDO FAKER GEM PARA EXTRAIR DADOS DE UMA PLANILHA'.center(60)
puts'-' * 60

require "faker"
require 'csv'

puts Faker.class
puts Faker::Name.class
puts Faker::Name.name
puts Faker::Name.first_name
puts Faker::Name.last_name

puts Faker::Music.instrument
puts Faker::Sports::Football.player

# Armazena dados 20 vezes em um array
20.times do
    nome = Faker.Name.name
    email = Faker.Internet.email
    Telefone = Faker.PhoneNumber.PhoneNumber 
    dados << [nome, email, telefone]
end

# 2- Exporta para CSV
arquivo_csv = "data/dados_Faker.csv"
csv.open(arquivo_csv, 'w') do |csv|
    csv << ['Nome', 'Email', 'Telefone']
    dados.each do |dado|
        csv << dado
    end
end

puts "Dados Salvos em #{arquivo_csv} "

pirnt'-' * 40