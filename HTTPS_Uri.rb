puts'-' * 40
puts'Módulo URI e HTTP - Extraindo Informações de um Site'.center(40)
puts'-' * 40

require "uri"
require "net/http"

uri = URI.parse("https://www.google.com")

http = Net::HTTP.new(uri.host, uri.port)

http.use_ssl = (uri.scheme == 'https')

request = Net::HTTP::Get.new(uri)

response = http.request(request)

puts "Status: #{response.code} #{response.message}"

if response.is_a?(Net::HTTPSuccess)
  puts response.body
else
  puts "A requisição falhou com Status #{response.code}"
end
