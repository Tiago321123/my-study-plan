puts "jbkbh" # tem \n
puts "jbkbh"

print "j\"bkbh" # não tem \n
print " jbkbh\n" 

frase = " Hello, world   "
puts frase.upcase()
# or
puts " Hello, world   ".upcase()
puts frase.downcase()
puts frase.strip() # tira os whitespace 

puts frase.include? "Hello, wor" # tem isso dentro de frase?
puts frase[0,4] # pega esse intervalo no index
puts frase.index("el") # o index da primeira vez que aparece

BEGIN { # vai ser o first
    puts "begin"
}

END {
    puts "end"
}

puts "Digite seu nome: " # só isso pra input
#puts "hello " + gets.chomp + " bem vindo" 

# só issooo!!!
# chomp é pra juntar num linha só com o "bem vindo"


# METHODS

def hello(name, age =2) # esse age=2 é padrão, funciona quando não recebe por parâmetro
    puts "Hello " + name + " " + age.to_s
end

puts "Man!"
hello("pedro", 43)
puts "Oh no!"

def cube(num)
    return num**3, 70
end

puts cube(3)[1] # mais de um retorno, posso escolher qual eu quero

# PARÂMETROS
# Listagem 7. Evitando repetições utilizando parâmetros com valores padrão.

def usar_farois(tipo_farol="farol-baixo")
  puts "Acendendo #{tipo_farol}"
end
#Se for necessário fornecer outro tipo de parâmetro basta passar o valor desejado, porém, se não precisar alterar o valor padrão basta chamar o método normalmente sem nenhum parâmetro. A seguir temos um exemplo utilizando o valor padrão e um valor definido, respectivamente:

usar_farois
usar_farois("farol-alto")

day ="mon"
case day
    when "mon"
        puts day_name = "Monday"
    when "tue"
        puts day_name = "Tuesday"
    else "Invalid day"
end

#  OR

def day(day)
    case day
        when :mon
            puts day_name = "Monday"
        when :tue
            puts day_name = "Tuesday"
        else "Invalid day"
    end
end
day(:tue) # mais fácil e melhor para alterar depois


=begin
    comentário maior
=end



class Box
    # constructor method
    def initialize(width, height)
       @w, @h = width, height
    end
    # instance method
    def getArea
       @w * @h
    end
end
  
 # define a subclass
class BigBox < Box
  
    # change existing getArea method as follows
    def getArea
       @area = @w * @h
       puts "Big box area is : #@area"
    end
end
  
 # create an object
box = BigBox.new(15, 20)
  
 # print the area using overridden method.
box.getArea


# MODULES

require_relative "module.rb"
include Tools
Tools.sayHi("Marcos")

module NaoSei
    def  say(name)
        puts "hello #{name}"
    end

    def sa(name)
        puts "bye #{name}"
    end
end
include NaoSei
NaoSei.say "tiago"