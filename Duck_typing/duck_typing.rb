class Pato
   def quack!
      "Quack! Quack!"
   end
end

class PatoDoente
   def quack!
      "Queeeeeck...."
   end
end

class Pessoa
   def apertar_o_pato(pato)
      puts pato.quack!
   end
end

pato = Pato.new
pato2 = PatoDoente.new

pessoa = Pessoa.new

pessoa.apertar_o_pato(pato)

pessoa.apertar_o_pato(pato2)