puts'-' * 40
puts' LENDO ARQUIVO DE TEXTO '.center(40)
puts'-' * 40

# 1-Alternativa 1
# movies = File.open("data/filmes.txt")
# puts movies.class

# movies.each { |line| puts line.strip}

# 2-Alternativa 2
# Extrai apenas linhas não vazias

file_path = "data/filmes.txt"
File.open(file_path, "r") do |file|

    # Lê o arquivo linha por linha, remove linhas vazias e imprime as não vazias

    file.each_line { |line| puts line.strip unless line.strip.empty? }
end

puts'-' * 40