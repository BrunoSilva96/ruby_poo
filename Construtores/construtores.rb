class Pessoa
   attr_accessor :nome, :idade #Atributos
   
   def initialize(nome, idade)
      @nome = nome
      @idade = idade
   end
   
   def gritar(texto = "Grhhhhhhh")
      "Gritando.....#{texto}"
   end

   def agradecer(texto = "Obrigado!")
      texto
   end
end

pessoa = Pessoa.new("Bruno Silva", 26)
pessoa2 = Pessoa.new("Rosangela Figueiredo", 50)

puts pessoa.nome
puts pessoa.idade


puts pessoa2.nome
puts pessoa2.idade