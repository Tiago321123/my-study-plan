# ARRAYS
friends = Array["Pedro", "Joao", "Tiago"]
puts friends.include? "Joao" # aqui tem q ser idêntico,(estrutura de dados)

[1,2,3].product([4,5])     #=> [[1,4],[1,5],[2,4],[2,5],[3,4],[3,5]]
[1,2].product([1,2])       #=> [[1,1],[1,2],[2,1],[2,2]]
[1,2].product([3,4],[5,6]) #=> [[1,3,5],[1,3,6],[1,4,5],[1,4,6],
                           #     [2,3,5],[2,3,6],[2,4,5],[2,4,6]]
[1,2].product()            #=> [[1],[2]]
[1,2].product([])          #=> []

# [1,2] esse faz pares com [1,3] ficando [1,1] [1,3] [2,1] [2,3]

a = %W[ b c d e f ]
puts a.select {|v| v =~ /[[aeiou]]/ }    #=> ["a", "e"]

# Prefira %w à sintaxe de array literal quando precisar de um array de palavras
Citys = %W[Americana Campinas Limeira]

# %w() array of strings
# %r() regular expression.
# %q() string
# %x() a shell command (returning the output string)
# %i() array of symbols (Ruby >= 2.0.0)
# %s() symbol
# %() (without letter) shortcut for %Q()

puts [ "a", "b" ].concat( ["c", "d"]).to_s   #=> [ "a", "b", "c", "d" ]
[ "a" ].concat( ["b"], ["c", "d"]) #=> [ "a", "b", "c", "d" ]
a = [ 1, 2 ]
puts a.concat(a, a) # 2 vezes                #=> [1, 2, 1, 2, 1, 2]


a = [ "a", "a", "b", "b", "c" ]
a.uniq   # => ["a", "b", "c"]     descarta repetidos
b = [["student","sam"], ["student","george"], ["teacher","matz"]]
b.uniq {|s| s.first}   # => [["student", "sam"], ["teacher", "matz"]]