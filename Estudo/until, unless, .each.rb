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

unless(false) # se sim, eu não faço
    puts "roda porque é false"
end

(1..10).each do |n| # (1..10) incluo o 10
    puts n unless (n % 2 != 0) # puts n a menos que seja ímpar
end