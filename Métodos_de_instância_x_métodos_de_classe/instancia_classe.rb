class Teste
   def ola #Método de Instância
      "Olá!"
   end

   def self.hello#Método de Classe
      "Hello!"
   end
end

objeto_teste = Teste.new
puts objeto_teste.ola

puts Teste.hello#Não necessita da criação de um objeto para que cpossa chamar um método