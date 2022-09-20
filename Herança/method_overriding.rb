class Calculadora
   def somar(numero1, numero2)
      numero1 + numero2
   end
end

class CalculadoraFashion < Calculadora
   def somar(numero1, numero2)#reescrever o método, e adicionando uma funcionalidade a mais na hora do puts
      "A soma é: #{numero1 + numero2}"
   end
end

########################

calculadora = Calculadora.new
puts calculadora.somar(13, 13)


calculadora_fashion = CalculadoraFashion.new
puts calculadora_fashion.somar(13, 13)