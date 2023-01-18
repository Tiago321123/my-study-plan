require 'httparty'

response = HTTParty.get("https://brasilapi.com.br/api/ddd/v1/122433")

# puts response.body imprime o corpo todo
parsed_response = JSON.parse(response.body)

parsed_response.each do |key, value|
    puts "#{key} #{value}"
end

#Em Ruby, as chaves de um hash não são armazenadas em ordem. Portanto, quando você usa o método each para iterar sobre um hash, as chaves e valores são retornados em ordem arbitrária.

#Se você precisar iterar sobre as chaves de um hash em ordem, você pode usar o método sort para ordenar as chaves primeiro e, em seguida, iterar sobre elas. Por exemplo:

5.times do
puts "Hello world"  
end

def fome?(hora_do_dia)
    puts "Mim sem fome"
    if hora_do_dia < 12 
    false
    else true
    end
end
  
def comer_um(o_que)
    puts "Mim comer #{o_que}\n"
end
  
comer_um 'maçã' if fome?(14)
  
comer_um 'maça' if fome?(10)
