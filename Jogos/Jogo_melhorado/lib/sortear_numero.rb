class SortearNumero
   def self.sortear
      
      vetor = []
      File.open(File.expand_path('../../numeros.txt', __FILE__), 'r') do |arquivo|
         while line = arquivo.gets
            vetor.push(line.to_i)
         end
      end
      
      vetor.sample
   end
end