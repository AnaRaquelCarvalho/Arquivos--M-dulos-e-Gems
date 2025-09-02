puts'-' * 40
puts'Módulo CSV'.center(40)
puts'-' * 40

require 'csv'

# Escrevendo dados em um arquivo CSV
CSV.open("data/exemplo.csv", "w") do |csv|
  csv << ["Nome", "Idade", "Cidade"]
  csv << ["Alice", 25, "São Paulo"]
  csv << ["Bob", 30, "Rio de Janeiro"]
  csv << ["Carol", 28, "Belo Horizonte"]
end

puts "Dados CSV escritos com sucesso."
puts '-' * 40

# Lendo dados de um arquivo CSV
CSV.foreach("data/exemplo.csv", headers: true) do |row|
  nome = row["Nome"]
  idade = row["Idade"]
  cidade = row["Cidade"]
  puts "Nome: #{nome}, Idade: #{idade}, Cidade: #{cidade}"
end

puts '-' * 40