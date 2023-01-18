puts "hello " * 3

valo = 1..3
valo.each do |i|
    puts i
end

valo = 1...3
valo.each do |i|
    puts i
end
puts "\n"

z = ["afa", 24, true,[12]]
k = z[3] 
k << 5 # se altero ele, altero o z too
puts k
puts z
