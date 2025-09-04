print 'UTILIZANDO FAKER GEM PARA EXTRAIR DADOS DE UMA PLANILHA'.center(60)

require "Faker"
require "csv"
require 'bundler'

# Exemplos de uso do Faker
puts Faker.class
puts Faker::Name.class
puts Faker::Name.name
puts Faker::Name.first_name
puts Faker::Name.last_name

puts Faker::Music.instrument
puts Faker::Sports::Football.player

# Armazena dados 20 vezes em um array

dados = []

20.times do
  name = Faker::Name.name
  email = Faker::Internet.email
  telefone = Faker::PhoneNumber.phone_number
  dados << [name, email, telefone]
end

# Exporta para CSV

arquivo_csv = "data/dados_Faker.csv"
CSV.open(arquivo_csv, 'w') do |csv|
  csv << ['Nome', 'Email', 'Telefone']
  dados.each do |dado|
    csv << dado
  end
end

print "Dados salvos em #{arquivo_csv}"