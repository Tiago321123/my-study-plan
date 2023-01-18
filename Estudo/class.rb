class Book # é a mesma ideia de java, mas mais simples
    attr_reader :title, :author, :pages
    # attr_writer, attr_reader, attr_accessor
    # fazer manualmente o attr_writer para proteger os dados
    def initialize(title, author, pages) # sempre quando criar, Book.new
        puts "Creating a new book" 
        @title = title
        @author = author
        @pages = pages
    end

    def conta_pages 
        if @pages >=200
            return true
        end
        return false
    end

    def set_title(valor)
        if valor == ""
            puts "O título não pode estar em branco"
        else
            @title = valor
        end
    end

    def set_author(valor)
        if valor == ""
            puts "O nome do autor não pode estar em branco"
        else
            @author = valor
        end
    end
    
    def set_page(valor)
        if valor < 0
            puts "Números de páginas não pode ser menor que 0"
        else
            @pages = valor
        end
    end
end

book1 = Book.new("Harry Potter", "JK Rowling", 300)
puts book1.title # sem private, consigo acessar
puts book1.conta_pages


# Building a QUIZ

class Question 
    attr_accessor :prompt, :answer
    def initialize(prompt, answer) # é o construtor
        @prompt = prompt
        @answer = answer
    end

    def responder 
        puts "eu respondo"
    end
end

q1 = "Some question\n(a)red\n(b)green\n(c)yellow"
q2 = "Some question\n(a)red\n(b)pink\n(c)yellow"
q3 = "Some question\n(a)yellow\n(b)green\n(c)orange"

questions = [
    Question.new(q1,"a"),
    Question.new(q2,"c"),
    Question.new(q3,"b")
]

def runTest(questions)
    answer = ""
    score = 0
    for question in questions
        puts question.prompt
        answer = gets.chomp
        if answer == question.answer
            score += 1
        end
    end
    return "\nScore: " + score.to_s + "/" + questions.length.to_s
end
puts runTest(questions)


# Herança

class Heranca < Question # Herda do Question
 
    def makeEspecial
        puts "Herança ola"
        puts @prompt
    end

    def responder
        super # o super de java, que chama o método da super classe
        puts "E mais isso aqui"
    end
end
her = Heranca.new(q2,"a")
her.makeEspecial
her.responder