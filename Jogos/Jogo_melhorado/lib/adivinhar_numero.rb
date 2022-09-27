require_relative 'inicializando'
require_relative 'sortear_numero'

class AdivinharNumero
   attr_reader :numero, :venceu

   def initialize
      Inicializacao.inicializando
      @numero = SortearNumero.sortear #Random.rand(1..100)
      @venceu = false
     
   end

   def tentar_adivinhar(numero = 0)
      if numero == @numero
         @venceu = true
         return "Você acertou!!"
      elsif numero > @numero
         @numero_maior = numero
         return "O número informado é menor"
      else
         @numero_menor = numero
         return "O número informado é maior"
      end
   end
end