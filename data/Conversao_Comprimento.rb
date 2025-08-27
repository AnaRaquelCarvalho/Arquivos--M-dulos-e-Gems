puts'-' * 40
puts'MÓDULO - CALCULADORA CONVERSÃO DE COMPRIMENTO'.center(40)
puts'-' * 40

module LengthConversions
    def self.miles_to_feet(miles)
        miles * 5280
    end

    def self.miles_to_inches(miles)
        feet = miles_to_feet(miles)
        feet * 12
    end

    def self.miles_to_centimers(miles)
        inches = miles_to_inches(miles)
        inches * 2.54
    end
end

# Milhas para Pés
puts "#{format('%.2f', LengthConversions.miles_to_feet(10))} pés"
puts '-' * 40

# Milhas para Polegadas
puts "#{format('%.2f', LengthConversions.miles_to_inches(20))} polegadas"
puts '-' * 40

# Milhas para Centímetros
puts "#{format('%.2f', LengthConversions.miles_to_centimers(30))} centímetros"

puts'-' * 40