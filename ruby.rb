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
