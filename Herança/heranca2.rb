class Funcionario
   attr_accessor :nome, :cpf, :salario
end

class Gerente < Funcionario
   attr_accessor :senha, :tempo_empresa
end

funcionario = Funcionario.new

puts "Funcionario"
funcionario.nome = "Bruno"
funcionario.cpf = 12345678910
funcionario.salario = 1.600

puts funcionario.nome
puts funcionario.cpf
puts funcionario.salario

puts "-------------------------------"

gerente = Gerente.new
puts "Gerente"
gerente.nome = "Vini"
gerente.cpf = 1987654321
gerente.salario = 11.000
gerente.senha = 123456
gerente.tempo_empresa = "8 anos"

puts gerente.nome
puts gerente.cpf
puts gerente.salario
puts gerente.senha
puts gerente.tempo_empresa