class Pessoa
   attr_accessor :nome, :idade #Atributos

   # def nome(nome) attr_writter
   #    @nome = nome
   # end

   # def nome attr_reader
   #    @nome
   # end

   # def idade(idade)
   #    @idade = idade
   # end

   # def idade
   #    @idade
   # end

   def gritar(texto)#Método com parâmetro 
      puts texto
   end

   def agradecer
      puts "Obrigado!"
   end
end

pessoa = Pessoa.new#Instanciou

pessoa.nome = "Bruno Silva"
pessoa.idade = 26

puts pessoa.nome
puts pessoa.idade

pessoa2 = Pessoa.new#Instanciando uma nova pessoa, mostrando que a variavel da instancia vai gerar outro objeto com as caracteristicas do novo objeto criado(pessoa2)def nome(nome)

pessoa2.nome = "Rosagela Figueiredo"
pessoa2.idade = 50

puts pessoa2.nome
puts pessoa2.idade