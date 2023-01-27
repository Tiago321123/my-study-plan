band = 
{
    velocidade: "20Km",
    altura: "20cm",
    peso: "30Kg"
}

band.each do |key, value|
    puts "Key: #{key} Value: #{value}"
end

# terminal:  ri Array#
puts local_variables

array = [1,2,3,4,5,6,7,8,9,10]

puts array.collect { |n| n % 2 == 0}.to_s  # to_s deixará assim: [false, true ....] 
puts array.select { |n| n % 2 == 0 }.to_s
puts array.map { |n| n * 2}.to_s

puts array.filter { |n| n % 2 != 0}.to_s

puts array.inject(0) { |sum, number| sum + number} # like sum += number
# 0 é o valor inicial de sum
# number é o elemento do array
# o resultado da operação vai para sum e pega o próximo number

# OR
puts array.inject(:+) # executa operações entre os elementos

puts array.map { |n| n * n }.inject(:+) 

def solution(number)
    if number < 0 then return 0
    end
    sum = 0
    (1...number).each do |number|
        if number % 3 == 0 || number % 5 == 0 then
            sum += number
        end
    end
    return sum
end

# or 
puts (1...10).select {|i| i % 3 == 0 || i % 5 == 0}.inject(:+)
puts solution 10

rain_data = [
    {
        day: 1,
        measure: 34
    },
    {
        day: 2,
        measure: 12
    },
    {
        day: 3,
        measure: 76
    },
    {
        day: 4,
        measure: 38
    },
    {
        day: 5,
        measure: 98
    },
    {
        day: 6,
        measure: 65
    },
    {
        day: 7,
        measure: 31
    },
    {
        day: 8,
        measure: 87
    },
    {
        day: 9,
        measure: 54
    },
    {
        day: 10,
        measure: 10
    },
    {
        day: 11,
        measure: 87
    },
    {
        day: 12,
        measure: 54
    }
]

# puts rain_data.each {|n| n[:measure] }.inject(:+) each não dá pq seria inject(:+) para um apenas
p = puts.to_s # fica em forma de [ , , ]
p rain_data.collect {|n| n[:measure] }.inject(:+) / 0.2374 # coleto e depois somo os que quero