require 'tty-cursor'

class Inicializacao
   def self.inicializando
      system('clear')

      cursor = TTY::Cursor
      print cursor.move_to(70, 10)

      print "Inicializando."
      4.times do |i|
         sleep 1
         print "."   
      end
      sleep 1
      puts "."
      system('clear')
   end
end