class Franquia
   def descricao
      "Franquia!"
   end
end

class Franquiado < Franquia
   def descricao
      #Invocando o método descrição da classe Pai/Conta
      puts super#Não foi passado parametro pois o initialize da classe Pai não necessita de parametro.
      "Franquiado!"
   end
end


franquia = Franquia.new
puts franquia.descricao

puts "--------------------------------"

franquiado = Franquiado.new
puts franquiado.descricao


puts "------------------------------"
##################################
##################################
##################################


class Conta
   attr_reader :numero_da_conta, :saldo

   def initialize(numero_da_conta, saldo = 0)
      @numero_da_conta = numero_da_conta
      @saldo = saldo
   end
end

class ContaEspecial < Conta
   attr_reader :limite_cheque_especial

   def initialize(numero_da_conta, saldo, limite_cheque_especial)
      super(numero_da_conta, saldo)#Initialize da classe Pai
      #@numero_da_conta = numero_da_conta
      #@saldo = saldo
      #O super é equivalente a escrever o código assim.(neste caso)
      @limite_cheque_especial = limite_cheque_especial
   end
end

conta = Conta.new("001", 200.00)
puts conta.numero_da_conta
puts conta.saldo

puts "------------------------------"

conta_especial = ContaEspecial.new("002", 1000.00, 5000.00)
puts conta_especial.numero_da_conta
puts conta_especial.saldo
puts conta_especial.limite_cheque_especial