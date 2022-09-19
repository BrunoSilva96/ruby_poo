class Dog
   attr_accessor :name
   attr_reader :breed
   def initialize(name, breed)
      @name = name
      @breed = breed
   end

   def bark (barking = "Au Au!") 
      puts text
   end
end

dog_one = Dog.new("Hórus", "PitBull")

#dog_one.name = ("Xiuauaua")
#dog_one.breed = "pinscher"
puts "Nome: #{dog_one.name}"
puts "Raça: #{dog_one.breed}"
dog_one.bark
dog_one.bark("Auuuu!")

dog_two = Dog.new("Malu", "Yorkshider")

puts "Nome: #{dog_two.name}"
puts "Raça: #{dog_two.breed}"
dog_two.bark("Au.....Au!")
dog_two.bark