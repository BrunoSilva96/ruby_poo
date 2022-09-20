class Pessoa
   def gritar#Método 
      puts "Bora BILL!!"
   end

   def agradecer
      puts "Obrigado!"
   end
end

people = Pessoa.new#Instanciou

people.gritar#Chamou o método
people.agradecer

###################################

class Pessoa
   #def gritar(texto = "Bora mulher do BILL!!!") caso nenhum parâmetro for passado, prevalece o que clocamos como padrão dentro da área de parâmetros.
   def gritar(texto)#Método com parâmetro 
      puts texto
   end

   def agradecer
      puts "Obrigado!"
   end
end

people = Pessoa.new#Instanciou

people.gritar("Bora fi do BILL!!!")#Chamou o método com parâmetro
people.agradecer