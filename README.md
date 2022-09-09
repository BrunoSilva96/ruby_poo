# ruby_poo

Curso de Jackson Pires de Ruby orientado a objeto, vai do básico até um certo nivel, aqui vou descrever métodos e sintxes que possibilitam um melhor uso da linguagem Ruby. Com o meu entendimento e com a ajuda da descrição do professor.

# Coerção

gets.chomp.to_i = Transforma o que vem na entrada do gets para um Inteiro

gets.chomp.to_f = Transforma o que vem na entrada do gets para um Float

gets.chomp.to_s = Transforma o que vem na entrada do gets para uma String

to_? = Pode ser usado de outra maneira além do gets.

# Operadores relacionais

  1- >  - Mario que
  
  2- <  - Menor que
  
  3- >= - Maior ou igual que
  
  4- <= - Menor ou igual que
  
  5- == - Igual
  
  6- != - Diferente
  
  7- <=> - Spaceship: Retorna -1, 0, -1, Coforme o nuemro da esquerda muda, se for menor que o da direita (-1), se for igual(0) e se for maior(1).

# Estruturas Condicionais

# if...elsif...else
  -> Caso a condição seja verdadeira o código entra na condição do if, caso não seja, vai conferir o elsif e caso não seja verdadeira, segue para o else.
  
          puts "Digite um número: "
          number = gets.chomp.to_i
          
          if number > 10 then
            puts "O valor digitado é maior que 10"
          elsif number > 5
            puts "O valor digitado é maior ou igual a 5(entre 5 e 10)"
          else
            puts "O valor digitado é menor que 5"
          end
          
          
# unless
  -> Ao contrario do If, Unless é a verificação se a informação é falsa, segue o exemplo.
  (O numero é maior do que 10? não, então entra na primeira verificação, caso seja maior do que 10 ele vai passar para o else)
  Agora no caso, so vai passar e dá um puts caso a verificação do parametro seja falsa.(O número digitado for menor do que 10).
  
          puts "Digite um número: "
          number = gets.chomp.to_i
          
          unless number > 10 
            puts "O valor digitado é menor do que 10"
          else
            puts "O valor digitado é maior do que 10"
          end
  
  
# case...when
  Para não ficar um código cheio de ifs e elses, pode se usar o case...when, vamos acompanhar o exemplo abaixo.
  Caso o número escolhido for o 1 entra no primeiro when, caso nao seja, ele procura ate que a compareação seja verdadeira e executa o bloco. O else vai servir como uma linha padrão caso não se encaixe em nenhum parametro.
  
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
        
        
# Operadores lógicos


 **&&** - Funciona de maneira em que as verificações dos parametros passados tem que ser verdadeira, caso seja falso o bloco if não será executado, mas como vemos no exemplo abaixo o código entra no if, pois a verificação está correta em ambos os parametros passados.(Pode se usar támbem o and no lugar do &&)

      number1 = 10
      number2 = 20
      number3 = 30
      number4 = 40

      if (number1 < number2) && (number3 < number4)
         puts "Condição atendida nos dois casos."
      else 
         puts "Uma das condições não atende a verificação."
      end

**||** - Funciona de maneira em que basta apenas uma das verificações ser dada como verdadeira, e já entra no bloco if, pois um dos parametros passados é "true".
(Pode se usar támbem o or no lugar do ||)

        
      number1 = 10
      number2 = 20
      number3 = 30
      number4 = 40


      if (number1 > number2) || (number3 < number4) 
        puts "Condição atendida nos dois casos."
      else 
        puts "Condição não atendida nos dois casos"
      end
      
      
**!** - É uma negação, então inverte o padrão de verificação. Nesse caso, dentro do bloco a verificação é que o number1 é maior(>) que o number2, iria dar false, mas por ser uma negação, então o resultado final é true. (Pode se usaqr támbem o not no lugar do !)


        number1 = 10
        number2 = 20
        
        if !(number1 > number2) 
           puts "Negação atendida."
        else 
           puts "Negação não atendida."
        end
