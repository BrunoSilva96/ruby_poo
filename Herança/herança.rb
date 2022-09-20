class Pai
   attr_accessor :nome

   def falar(texto = "Alô!")
      texto
   end
end

class Filha < Pai #Classe Filha herdando as características da Classe Pai, A classe Filha ja tem acesso aos atrubutos e métodos que há na classe Pai.
end

pai = Pai.new
pai.nome = "Bruno"
puts pai.nome
puts pai.falar

puts "----------------------------"

filha = Filha.new
filha.nome = "Micalateia"
puts filha.nome 
puts filha.falar("Hummmm Micalateia.")