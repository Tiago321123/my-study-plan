# FILES

File.open("texto.txt", "r") do |file| # Read (r), Write (w), Execute (x)
    # puts file.read().include? "girafa" # na primeira chamada moveu o "ponteiro de arquivo" (file pointer) para o final do arquivo. Isso significa que a segunda chamada a file.read() não está lendo nenhum conteúdo. Logo, não tem como ler denovo assim
 
    fileLine = file.readline() # é != readlines()
    fileLines = file.readlines()
    fileRead = file.read() # ou usa esse ou esse apenas uma vez: file.read().include?
    puts fileRead.include? "girafa"
    puts fileLine 
    puts fileLine # sai igual por ser a mesma variável

     # puts file.readchar()
    puts file.read()
    file.close   
    fileOpen = File.open("texto.txt", "r")
end

files = File.open("texto.txt", "r")
puts files.readlines[2]
puts files.read