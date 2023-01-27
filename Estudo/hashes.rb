# Hashes

estados = {
    # KEY => value   key value pairs
    "Mato grosso" => "MT",
    :Porto => "Pt",
    "São Paulo" => "SP",
    4 => "lgb"
}
puts estados["Mato grosso"] # output: MT
puts estados[:Porto] # dá também
puts estados[4]

# https://ruby-doc.org/core-3.1.1/Hash.html

=begin
You can use a Hash to give names to objects:

person = {name: 'Matz', language: 'Ruby'}
person # => {:name=>"Matz", :language=>"Ruby"}
You can use a Hash to give names to method arguments:

def some_method(hash)
  p hash
end
some_method({foo: 0, bar: 1, baz: 2}) # => {:foo=>0, :bar=>1, :baz=>2}
Note: when the last argument in a method call is a Hash, the curly braces may be omitted:

some_method(foo: 0, bar: 1, baz: 2) # => {:foo=>0, :bar=>1, :baz=>2}
You can use a Hash to initialize an object:

class Dev
  attr_accessor :name, :language
  def initialize(hash)
    self.name = hash[:name]
    self.language = hash[:language]
  end
end
matz = Dev.new(name: 'Matz', language: 'Ruby')
matz # => #<Dev: @name="Matz", @language="Ruby">
Creating a Hash¶ ↑
You can create a Hash object explicitly with:

A hash literal.

You can convert certain objects to Hashes with:

Method Hash.

You can create a Hash by calling method Hash.new.

Create an empty Hash:

h = Hash.new
h # => {}
h.class # => Hash
You can create a Hash by calling method Hash.[].

Create an empty Hash:

h = Hash[]
h # => {}
Create a Hash with initial entries:

h = Hash[foo: 0, bar: 1, baz: 2]
h # => {:foo=>0, :bar=>1, :baz=>2}
=end
