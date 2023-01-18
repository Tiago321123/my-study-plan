x = 0
until (x >= 5) do # enquanto for false
    puts "X é #{x}"
    x += 1
end

x =0
begin   
    puts "X é #{x}"
    x += 1
end until (x >= 5)

band = 
{
    velocidade: "20Km",
    altura: "20cm",
    peso: "30Kg"
}

band.each do |key, value|
    puts "Key: #{key} Value: #{value}"
end