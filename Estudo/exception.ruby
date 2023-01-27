#  Exception

number = 2
begin
    #... process, may raise an 
    outcome = number / nil 
rescue 
    #... error handler
    puts "error catched"
    outcome = "undefined"
else
    #... executes when no error
ensure
    #... always executed
    puts outcome = "ensure it's undefined"
end


=begin
    The code between “begin” and “rescue” is where a probable exception might occur. If an exception occurs, the rescue block will execute. You should try to be specific about what exception you’re rescuing because it’s considered a bad practice to capture all exceptions.
=end

def conta(n1,n2,ope)
    begin # precisa do begin e end antes de fazer a excessão
        if ope == '*' 
            puts n1 * n2
        elsif ope == '/'
            puts n1 / n2
        elsif ope == '+'
            puts n1 + n2
        else raise ArgumentError, "Valor inválido: #{ope}" # apenas com isso, encerra o programa
        end
    end
    rescue ArgumentError => e # com isso ainda dá pra continuar
        puts "Digite um valor válido"
    rescue ZeroDivisionError => e 
        puts "Não pode dividir por 0"
    rescue TypeError => e
        puts "Insira um número, não outra coisa"
    rescue # para qualquer outro erro
        puts "Não faça de novo"
end

conta(9,0,'/')