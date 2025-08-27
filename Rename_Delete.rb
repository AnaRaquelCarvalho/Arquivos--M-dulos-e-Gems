puts'-' * 40
puts'RENOMEANDO E EXCLUINDO ARQUIVOS'.center(40)
puts'-' * 40

# 1-Renomeia arquivos
File.rename("data/Cursos.txt", "data/cursos.txt")

# 2-Exclui arquivo
if File.exist?("data/Total.txt")
    File.delete("data/Total.txt")
end

puts'-' * 40