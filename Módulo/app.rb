require_relative 'pagamento'

include Pagamento # Trabalhando com constantes

puts "Digite a bandeira do cartão"
bandeira = gets.chomp

puts "Digite o número do cartão"
numero = gets.chomp

puts "Digite o valor da compra: "
valor = gets.chomp

# Trabalhando com métodos
puts Pagamento.pagar(bandeira, numero, valor)# O nome Pagamento não é necessario, mas colocando para uma melhor visualização.

# Trabalhando com Classes
cobrando = Pagamento::Finalizando.new# O nome Pagamento não é necessario, mas colocando para uma melhor visualização.
puts cobrando.pagando

puts APROVADO