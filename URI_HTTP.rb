puts'-' * 40
puts'Módulo URI e HTTP'.center(40)
puts'-' * 40

require "uri"
require "net/http"

p URI.class
p Net.class

uri = URI.parse("<https://www.google.com>")

p Net::HTTP.get(uri)

puts'-' * 40