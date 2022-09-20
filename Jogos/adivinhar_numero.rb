class AdivinharNumero
   attr_reader :numero, :venceu
   attr_accessor :numero_maior, :numero_menor 

   def initialize
      @numero = Random.rand(1..100)
      @venceu = false
      @numero_maior = 100
      @numero_menor = 0
   end

   def tentar_adivinhar(numero = 0)
      if numero == @numero
         @venceu = true
         return "Você acertou!!"
      elsif numero > @numero
         @numero_maior = numero
         return "O número informado esta entre #{@numero_menor} e #{@numero_maior}"
      else
         @numero_menor = numero
         return "O número informado esta entre #{@numero_menor} e #{@numero_maior}"
      end
   end
end

jogo = AdivinharNumero.new

until jogo.venceu do
   puts "Digite um número:"
   numero = gets.chomp.to_i
   
   puts jogo.tentar_adivinhar(numero)
end
