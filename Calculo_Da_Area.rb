puts'-' * 40
puts 'CALCULO DA ÁREA DE UM QUADRADO'.center(40)
puts'-' * 40

module Square
    def self.area(side)
        side * side
    end
end

module Rectangle 
    def self.area(base, width)
        base * width
    end
end

puts "#{Square.area(10)} m²"

puts "Área do Retângulo: #{Rectangle.area(20, 20)} m²"

puts'-' * 40
