puts "Escolha um núemro entre 1 e 5"
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