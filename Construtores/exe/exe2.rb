class Parrot
   attr_accessor :name, :age

   def initialize(name, age)
      @name = name
      @age = age
   end

   def repeat_sentence(text = "Curupaco!")
      text
   end
end

parrot_one = Parrot.new("Daniel", 15)

puts "Nome: #{parrot_one.name}"
puts "Idade: #{parrot_one.age}"
puts parrot_one.repeat_sentence
puts parrot_one.repeat_sentence("Loro quer biscoito!")

parrot_two = Parrot.new("Chapolin", 7)

puts "Nome: #{parrot_two.name}"
puts "Idade: #{parrot_two.age}"
puts parrot_two.repeat_sentence("Loro quer café!")
puts parrot_two.repeat_sentence