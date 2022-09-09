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

----------------------------------------------------------------

uts "Escolha um núemro entre 1 e 5"
    number_case = gets.chomp.to_i

    case number_case
      when 1
        puts "O valor escohido foi 1"
      when 2
        puts "O valor escohido foi 2"
      when 3
        puts "O valor escohido foi 3"
      when 4
        puts "O valor escohido foi 4"
      when 5
        puts "O valor escohido foi 5"
      else
        puts "Opção inválida!"
    end