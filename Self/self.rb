class Teste
   def meu_self
      puts  "Esse é meu self: #{self}"#No lugar do self vai voltar um endereço de memória, mostando que o self é a classe Teste
   end
end

class OutroTeste
   def meu_self
      puts  "Esse é meu self: #{self}"#Retorna outro endereço de memória(de OutroTeste que é a classe)
   end
end


teste = Teste.new
teste.meu_self

outro_teste = OutroTeste.new
outro_teste.meu_self