puts'-' * 40
puts'OPERAÇÕES EM DIRETÓRIOS'.center(40)
puts'-' * 40

puts Dir.pwd
# Dir.mkdir "teste"

# Lista arquivos e pastas
print Dir.glob "*"

# Lista apenas arquivos rb
print Dir.glob "*.rb"

Dir.glob("*") do |file|
    puts file
end

# Navegando entre diretórios
Dir.chdir "data"
puts Dir.pwd

puts'-' * 40