puts "Digite um número: "
number = gets.chomp.to_i

if number > 10 then
  puts "O valor digitado é maior que 10"
elsif number > 5
  puts "O valor digitado é maior ou igual a 5(entre 5 e 10)"
else
  puts "O valor digitado é menor que 5"
end


----------------------------------------------------------------

puts "Digite um número: "
number = gets.chomp.to_i

unless number > 10 
  puts "O valor digitado é menor do que 10"
else
  puts "O valor digitado é maior do que 10"
end