if ARGV.size > 0
  File.open(ARGV[0], 'r') do |arquivo|
     while line = arquivo.gets
      puts line
     end
  end
else 

  puts "Você deve informar o nome do arquivo a ser aberto. Ex: ruby app.rb teste.txt"
end