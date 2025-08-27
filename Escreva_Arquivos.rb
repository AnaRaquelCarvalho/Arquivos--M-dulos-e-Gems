puts'-' * 40
puts' ESCREVENDO ARQUIVOS DE TEXTO '.center(40)
puts'-' * 40

# Diferença do w (que executa uma vez e sobescreve)
# e do a (que vai adicionando os conteúdos abaixo)

# Alternativa 1 
# File.open("data/courses.txt", "w") do |file|
#     file.puts "Criando arquivo de texto"
#     file.write "Hello World"
#     file.puts "Olá mundo"
# end

# Alternativa 2 
File.open("data/courses.txt", "a") do |file|
   puts "Qual curso você deseja fazer?"
   course = gets.chomp
   file.puts course
end

puts'-' *40