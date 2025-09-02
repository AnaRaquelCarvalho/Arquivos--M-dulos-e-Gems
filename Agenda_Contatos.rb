puts'-' * 40
puts'AGENDA DE CONTATOS'.center(40)
puts'-' * 40

" Programa que lê três variáveis: nome, idade, cidade e alimenta uma planilha de contatos
e posteriormente, salvar o arquivo com o nome contatos.csv."

require 'csv'

# Solicitando dados do usuário
puts "Por favor, insira os dados da pessoa:"
print "Nome: "
nome = gets.chomp
print "Idade: "
idade = gets.chomp.to_i
print "Cidade: "
cidade = gets.chomp
puts '-' * 40

# Adicionando os novos dados ao arquivo CSV
CSV.open("exemplo.csv", "a") do |csv|
  csv << [nome, idade, cidade]
end

# Lendo e imprimindo todos os dados no arquivo CSV
CSV.foreach("exemplo.csv", headers: true) do |row|
  puts "Nome: #{row["nome"]}, Idade: #{row["idade"]}, Cidade: #{row["cidade"]}"
end

puts'-' * 40