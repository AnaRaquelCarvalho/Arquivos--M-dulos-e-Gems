puts '-' * 40
puts ' MÓDULO MATEMÁTICA (MATH)'.center(40)
puts '-' * 40

# Classe do módulo Math
puts "Classe do Math: #{Math.class}"
puts '-' * 40

# Raiz quadrada
puts "Raiz quadrada de 4: #{Math.sqrt(4)}"
puts "Raiz quadrada de 5: #{Math.sqrt(5)}"
puts '-' * 40

# Seno de 90° (convertendo para radianos)
puts "Seno de 90°: #{Math.sin(90 * Math::PI / 180)}"
puts '-' * 40

# Valor de PI
puts "Valor de PI: #{Math::PI}"
puts '-' * 40

# Cálculo da Área de um Círculo
def calcular_area(raio)
  Math::PI * raio ** 2
end

# Exemplo de uso do método
raio = 5
puts "Área do círculo com raio #{raio}: #{calcular_area(raio).round(2)}"
puts '-' * 40

puts'-' * 40