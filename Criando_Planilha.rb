print'-'*60
print'CRIANDO PLANILHA EXCEL COM RUBY'.center(60)
print'-'*60

# Primeiro instale a gem:
# gem install write_xlsx

require 'write_xlsx'

# Cria um novo arquivo Excel
workbook  = WriteXLSX.new('planilha_exemplo.xlsx')

# Adiciona uma aba chamada "Dados"
worksheet = workbook.add_worksheet('Dados')

# Escreve alguns títulos
worksheet.write(0, 0, 'Nome')
worksheet.write(0, 1, 'Idade')
worksheet.write(0, 2, 'Cidade')

# Escreve alguns dados
dados = [
  ["Ana", 25, "São Paulo"],
  ["Carlos", 30, "Rio de Janeiro"],
  ["Mariana", 22, "Belo Horizonte"]
]

dados.each_with_index do |linha, i|
  linha.each_with_index do |valor, j|
    worksheet.write(i+1, j, valor)
  end
end

# Fecha o arquivo (salva a planilha)
workbook.close

puts "Planilha criada com sucesso!"

print'-'*60
