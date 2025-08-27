puts'-' * 40
puts'CRIANDO UM MÓDULO'.center(40)
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

# puts LengthConversions.miles_to_feet(100)
# puts LengthConversions.miles_to_inches(200)
# puts LengthConversions.miles_to_centimers(150)

puts'-' * 40