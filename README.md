# ruby_poo

Curso de Jackson Pires de Ruby orientado a objeto, vai do básico até um certo nivel, aqui vou descrever métodos e sintxes que possibilitam um melhor uso da linguagem Ruby. Com o meu entendimento e com a ajuda da descrição do professor.

# Coerção

gets.chomp.to_i = Transforma o que vem na entrada do gets para um Inteiro

gets.chomp.to_f = Transforma o que vem na entrada do gets para um Float

gets.chomp.to_s = Transforma o que vem na entrada do gets para uma String

to_? = Pode ser usado de outra maneira além do gets.

# Operadores relacionais

  1 - >   Maior que
  
  2 - <   Menor que
  
  3 - >=  Maior ou igual que
  
  4 - <=  Menor ou igual que
  
  5 - ==  Igual
  
  6 - !=  Diferente
  
  7 - <=>  Spaceship: Retorna -1, 0, -1, Coforme o nuemro da esquerda muda, se for menor que o da direita (-1), se for igual(0) e se for maior(1).

# Estruturas Condicionais
### if...elsif...else
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
          
          
### unless
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
  
  
### case...when
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


 ### && - Funciona de maneira em que as verificações dos parametros passados tem que ser verdadeira, caso seja falso o bloco if não será executado, mas como vemos no exemplo abaixo o código entra no if, pois a verificação está correta em ambos os parametros passados.(Pode se usar támbem o and no lugar do &&)

      number1 = 10
      number2 = 20
      number3 = 30
      number4 = 40

      if (number1 < number2) && (number3 < number4)
         puts "Condição atendida nos dois casos."
      else 
         puts "Uma das condições não atende a verificação."
      end

### || - Funciona de maneira em que basta apenas uma das verificações ser dada como verdadeira, e já entra no bloco if, pois um dos parametros passados é "true".
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
      
      
### ! - É uma negação, então inverte o padrão de verificação. Nesse caso, dentro do bloco a verificação é que o number1 é maior(>) que o number2, iria dar false, mas por ser uma negação, então o resultado final é true. (Pode se usaqr támbem o not no lugar do !)


        number1 = 10
        number2 = 20
        
        if !(number1 > number2) 
           puts "Negação atendida."
        else 
           puts "Negação não atendida."
        end


# Estruturas de repetição

### while
  Enquanto a condição for verdadeira o código será executado, no exemplo vemos que enquanto a variavel(i) for menor que 50, o bloco de código será executado.
  O nome Bruno será imprimido na tela e será somado mais um ao i ate que chegue em 50, assim finalizando o Loop.
      
      i = 1
      while i <= 50
        puts "Bruno #{i}"
        i += 1
      end
      
      
### until
  Enquanto a condição for falsa o código será executado, no exemplo que o Loop será executado até que a variavel(i) chegue em 1 novamente.
  Enquanto o while vai adicionar os 50 marcadores na interpolação, quando o bloco until for executado, vamos conseguir notar o número regredindo ate o 1 novamente.
  
      until i <= 0
        puts "Sou falso! #{i}"
      end


# Vetores/Arrays
  Reserva vários espaços na memória ao mesmo tempo, cria índices para armazenamento de variáveis, como se fosse um armário cheio de gavetas, que podemos acessar a hora que quisermos e pegar a informação que há dentro.(Uma coleção de dados)

        vetor = []

        vetor.push(67)#Foi para a primeira posição
        vetor.push(90)#Foi para a segunda posição
        vetor.push(45)#Foi para a terceira posição

        #[67, 90, 45]
    
        vetor[1]#Selecionando o vetor da casa 1, no cao o numero 90
        #[90]
        
        vetor[2] = 34#Selecionamos o valor localizado no index 2, que é o núemro 45 e substituimos ele por 34.
        #[67, 90, 34]      

        vetor.delete(90)#Deletamos diretamente o valor do vetor.
        #[67, 34]
        
      
# hashes
  Hash é uma coleção de chaves exclusivas e seus valores. Hash é como um Array, exceto que a indexação é feita com a ajuda de chaves arbitrárias de qualquer tipo de objeto. No Hash, a ordem de retorno das chaves e seu valor por vários iteradores é arbitrária e geralmente não estará na ordem de inserção.
  
        #hashes = {'key' => 'value}

        hashe = {"a" => "123", "b" => "456", c: "789"}#Tanto a setinha quanto os dois pontos funcionam na hora de declarar o hash

        hashe["a"]
        {1, 2, 3}
        hashe["b"]
        {4, 5, 6}
        hashe[:c]
        {7, 8, 9}

        hashe[:d] = 0 #adicionando a chave e o valor ao hash
        #{"a" => "123", "b" => "456", c: "789", d: "0"}
 
 
# Símbolos
  Um símbolo é o objeto Ruby mais básico que você pode criar. Ele é apenas um nome e um ID interno. Símbolos são úteis porque um dado nome de símbolo se refere ao mesmo objeto através de um programa Ruby. Símbolos são mais eficientes que strings. Duas strings com o mesmo conteúdo são dois objetos diferentes, mas para qualquer nome existe apenas um objeto Symbol. Isso pode economizar tempo e memória.  Symbol vem sempre depois de dois pontos(:).
  Pode se dizer que transforma o valor em estatico, pois não muda o lugar em que foi alocado.
  
  
        "Bruno".object_id#Retorna o endereço de memória
        "Bruno".object_id#Retorna o endereço de memória mas em um lugar alocado diferente.
        :Bruno.object_id#Retorna o endereço de memóra e diferente de uma string qualquer, se eu chamar novamente o símbolo vai me devolver o mesmo lugar          que alocou na memória.
        :Bruno.object_id

        ----------------------------------------------------
        #Muito utilizado em hashe
        hashe = {bruno: "Bruno"}
        #{:bruno => "Bruno"}
        
        ----------------------------------------------------
        
        "bruno".to_sym #Transforma a string em símbolo
        #:bruno
        
        
# each
  O each vai percorrer os elementos do array e executar o comando que foi dado.
  
          array = [1, 22, 05, 96]
          #iterador each
          array.each { |element| puts element }#each vai percorrer todo o array e imprimir um por um.

          ----------------------------------------------------
          #A variável 'element' vai recebendo um por um dos elementos dentro do array e executando.
          array.each do |element|#Quando se tme amis de uma linha de código, pode se usar o 'do'.
             puts element
             puts element * 2
             puts element * 3
          end
  
# Operadores de intervalo
  Seleciona de um ponto até o outro onde você deseja percorrer.
  
        array = [1, 2, 3, 4, 5]

        (1...5).each {|elements| puts elements}#Vai imprimir até o penultimo elemento do array

        (1..5).each {|elements| puts elements}#Vai imprimir todos os elementos que tem dentro do array
        
# times
  Vai repetir um bloco de comando quantas vezes você desejar.
  
      5.times { puts 'Bruno' }#Executa o comando puts 5 vezes.

      5.times { |count| puts "#{count} - Bruno" }#Executa o comando puts 5 vezes, mas o count mostra o tanto de vezes que foi repotido.
      
    
# Paradigma
  Paradigma é um conjunto de resgras que estabelecem fronteiras e descrevem como resolver os problemas dentrodestas fronteiras.
  Os paradigmas influenciam nossa percepção, ajudam-nos a organizar e a coordenar a maneira como olhamos para o  mundo.
  Logo a programação orientada a objetos (POO) é um paradigma para o desenvolvimento de software que baseia-se na utilização de componentes individuais (objetos) que colaboram para construir sistemas mais complexos. A colaboração entre os objetos é feita através do envio de mensagens.
  Paradigma de objetos baseia-se em alguns conceitos, como:    
- Classes
- Objetos
- Encapsulamento
- Herança 
- Dentre outros.
    
    
# 4 Pilares da orientação ao objeto
  - Abstração
    - Imaginar o objeto
      - Identidade única
      - Atributos
      - Métodos
  - Encapsulamento
    - Esconder as propriedades dos objetos para obter mais segurança.
  - Herança
    - Permite o reúso de código.
  - Polimorfismo
    - É a capacidade de referenciar um objeto de várias formar diferentes.
    
# Classes
  Uma classe é um gabarito para a definição de objetos. Através de definição de uma classe, descreve-se que **propriedades/atributos** e **métodos/ações** o objeto terá.    
  - Uma classe representa um conjunto de objetos com características afins.
  - Uma classe define o comportamento dos objetos através de seus métodos, e quais estados ele é capaz de manter através de seus atributos.
  
  Exemplos:
    É  possível especificar classes para entidades físicas, conceituais ou de software.
  - **Entidade Física:** caminhão, carro, bicicleta, etc.   
  - **Entidade Conceitual:** processo químico, matrícula, etc.      
  - **Entidade de Software:** lista encadeada, arquivo, etc.
      
  Exemplo: 
  - A classe "Lâmpada", pode conter os atributos "potência" e "voltagem", que sçao características comuns à todas as lâmpadas, e pode conter as ações "ligar" e "desligar", que também são características comuns.
  
# Encapsulamento
  Se refere a esconder os dados (atributos) dentro do objeto.
  - Produz duas visões do objeto:
    - Visão Interna (COMO o objeto faz)
    - Visão Externa (O QUE o objeto faz)
  Exemplo:
    - O funcionamento interno de um telefone é escondido (ou encapsulado) do usuário. Para o usuário realizar uma chamada telefônica (visão externa) ele não precisa conhecer os detalhes da eletrônica utilizados no telefone (visão interna)

### UML -> A Unified Modeling Language, ou Linguagem Unificada de Modelagem é, como o nome indica, uma linguagem de notação utilizada para modelar e documentar as diversas fases do desenvolvimento de sistemas orientados a objetos. 

Em setratando de classes, o encapsulamento é obtido através da visibilidade, conhecida também como "modificadores de acesso".
Os modificadores de acessos mais comuns são:
  - **public / público:** Representado por um sinal de "+" na notação UML. Elementos declarados como público podem ser cessados a partir de qualquer outra classe.
  - **private / privado:** Representado por um sinal de menos "-" na notaçãp UML. Elementos private só podem ser acessados pela proópria classe.
  - **protected / protegido:** Representado por um sinal de sustenido "#" na notação UML. Elementos protected só podem ser acessados pela proópria classe e por suas descendentes.
  
 # Objeto
    "Classes dão fábricas de objetos", "Objetos são instâncias de uma classe".
  Um objeto é capaz de armazenar estados através de seus atributos e reagir a mensagens enviadas a ele, assim como se relacionar e enviar mensagens a outros objetos.
  - Um objeto é qualquer indivíduo, lugar, evento, coisa, tela, relatório ou conceito que seja aplicável ao sistema.
  - Todo objeto pertence a uma determinada classe e possui atributos próprios.
  - Os atributos são mutáveis e podem receber diferentes valores de acordo com as características do objeto.
  A criação de um objeto consiste em sua instanciação, segundo, "cada instância tem seus próprios valores de atributos, mas compartilha o nome e o comportamentos dos etributos com as outras instâncias da classe"
  
  Exemplo
          
          Cachorro                        Istâncias
            - Atributos:      
              - nome                      Nome: Rex                 Nome: Ralph           Nome: Hórus
              - peso                      Peso: 10kg                Peso: 5kg             Peso: 25kg
              - cor do pêlo               Cor do pêlo: Preta        Cor do pêlo: Branca   Cor do pêlo: Tigrado
            - Métodos:
              - latir()
              - abanar()
              
              
# Definindo classes
  Em Ruby definimos uma classe da seguinte forma.
  
  Exemplo:
        
        
              class Conta
                corpoDaClasse
              end
              
  O nome da classe inicia-se com letra maiúscula e para nomes compostos devemos usar o padrão CamelCase.
  
  Exemplo: NomeDaMinhaClasse
    
  O corpo de uma classe deve conter:
  - Atributos
  - Métodos
  - Construtor (método de inicialização)
  
  Instanciando uma Classe (linha de código)
  - objeto = Classe.new 
 
# Definindo métodos
  Métodos são funções.
  
            class Pessoa
             def gritar
                 puts "Bora BILL!!"
             end

             def agradecer
                 puts "Obrigado!"
             end
            end

            people = Pessoa.new

            people.gritar
            people.agradecer
            
         
 ### Convenções a serem usadas:
 O nome de método inicia-se com letra minúscula e para nomes compostos devemos usar o padrão snake_case
 Exemplo: nome_do_meu_metodo
 
 ### Método com parâmetros
 

                        class Pessoa
                          #def gritar(parametro = "Bora mulher do BILL!!!") caso nenhum parâmetro for passado, prevalece o que clocamos como padrão dentro da área de parâmetros.
                          def gritar(parametro)#Método com parâmetro 
                             puts parametro
                          end

                          def agradecer
                             puts "Obrigado!"
                          end
                          end

                        people = Pessoa.new#Instanciou

                        people.gritar("Bora fi do BILL!!!")#Chamou o método com parâmetro
                        people.agradecer
          
# Definindo atributos (Características)
  **Existe uma forma diferente e mais tranquila de se fazer, ela está no arquivo que fiz sobre esse assunto**
    
                    class Pessoa
                       @nome = nil # Variavel de instancia, toda vez que um objeto for instanciado, ele vai ter uma só para ele.
                       @idade = nil #Esses são os atributos

                       def guardar_nome(nome)
                          @nome = nome
                       end

                       def mostrar_nome
                          @nome
                       end

                       def guardar_idade(idade)
                          @idade = idade
                       end

                       def mostrat_idade
                          @idade
                       end

                       def gritar(texto)#Método com parâmetro 
                          puts texto
                       end

                       def agradecer
                          puts "Obrigado!"
                       end
                    end

                    pessoa = Pessoa.new#Instanciou

                    pessoa.guardar_nome("Bruno Silva")
                    pessoa.guardar_idade("26")
                    
                    puts pessoa.mostrar_nome
                    puts pessoa.mostrat_idade

                    pessoa2 = Pessoa.new#Instanciando uma nova pessoa, mostrando que a variavel da instancia vai gerar outro objeto com as caracteristicas do novo objeto criado(pessoa2)

                    pessoa2.guardar_nome("Rosagela Figueiredo")
                    pessoa2.guardar_idade("50")
                    
                    puts pessoa2.mostrar_nome
                    puts pessoa2.mostrat_idade


# Métodos construtores ou de inicialização
  Permitem inicializar um objeto com dados "padrão".(initialize).
  
  
                       class Pessoa
                       attr_accessor :nome, :idade #Atributos

                       def initialize
                          @nome = "Vini"
                          @idade = 0
                       end

                       def gritar(texto)
                          puts texto
                       end

                       def agradecer
                          puts "Obrigado!"
                       end
                    end

                    pessoa = Pessoa.new

                    #pessoa.nome = "Bruno Silva"
                    pessoa.idade = 26

                    puts pessoa.nome
                    puts pessoa.idade

                    pessoa2 = Pessoa.new

                    pessoa2.nome = "Rosagela Figueiredo"
                    #pessoa2.idade = 50

                    puts pessoa2.nome
                    puts pessoa2.idade
                    
                    **No arquivo do código mostra como instanciar direto passando por parametro. Dois exercícios foram executados para fixação.** 
                                              
### Aula 36, criamos um minigame com números, aproveitei e aprimorei pra um jogo onde mostra um tanto a mais de infomação na hora que esta rodando.

# Herança
  Quando uma Classe(Filha) herda metódos e atributos de uma outra Classe(Pai)
  
                                         class Pai
                                         attr_accessor :nome

                                         def falar(texto = "Alô!")
                                            texto
                                         end
                                      end

                                      class Filha < Pai #Classe Filha herdando as características da Classe Pai, A classe Filha ja tem acesso aos atrubutos e métodos que há na classe Pai.
                                      end

                                      pai = Pai.new
                                      pai.nome = "Bruno"
                                      puts pai.nome
                                      puts pai.falar

                                      puts "----------------------------"

                                      filha = Filha.new
                                      filha.nome = "Micalateia"
                                      puts filha.nome 
                                      puts filha.falar("Hummmm Micalateia.")
                                      
                                      # Exemplo extra dentro da pasta de Herança.



# Method overriding
  Sobrescreve métodos da classe Pai
   
                              class Calculadora
                                 def somar(numero1, numero2)
                                    numero1 + numero2
                                 end
                              end

                              class CalculadoraFashion < Calculadora
                              # Overriding (SObrescrita de Método)
                                 def somar(numero1, numero2)#Sobrescrever o método, e adicionando uma funcionalidade a mais na hora do puts
                                    "A soma é: #{numero1 + numero2}"
                                 end
                              end

                              ########################

                              calculadora = Calculadora.new
                              calculadora.somar(13, 13)


                              calculadora_fashion = CalculadoraFashion.new
                              calculadora_fashion.somar(13, 13)
                              
                              
 # Super  
    O super serve basicamente para invocar o método correspondente na classe pai.
    Exemplos:
    
                        class Franquia
                           def descricao
                              "Franquia!"
                           end
                        end

                        class Franquiado < Franquia
                           def descricao
                              #Invocando o método descrição da classe Pai/Franquia
                              puts super#Não foi passado parametro pois o initialize da classe Pai não necessita de parametro.
                              "Franquiado!"
                           end
                        end


                        franquia = Franquia.new
                        puts franquia.descricao

                        puts "--------------------------------"

                        franquiado = Franquiado.new
                        puts franquiado.descricao


                        puts "------------------------------"
                        ##################################
                        ##################################
                        ##################################


                        class Conta
                           attr_reader :numero_da_conta, :saldo

                           def initialize(numero_da_conta, saldo = 0)
                              @numero_da_conta = numero_da_conta
                              @saldo = saldo
                           end
                        end

                        class ContaEspecial < Conta
                           attr_reader :limite_cheque_especial

                           def initialize(numero_da_conta, saldo, limite_cheque_especial)
                              super(numero_da_conta, saldo)#Initialize da classe Pai
                              #@numero_da_conta = numero_da_conta
                              #@saldo = saldo
                              #O super é equivalente a escrever o código assim.(neste caso)
                              @limite_cheque_especial = limite_cheque_especial
                           end
                        end

                        conta = Conta.new("001", 200.00)
                        puts conta.numero_da_conta
                        puts conta.saldo

                        puts "------------------------------"

                        conta_especial = ContaEspecial.new("002", 1000.00, 5000.00)
                        puts conta_especial.numero_da_conta
                        puts conta_especial.saldo
                        puts conta_especial.limite_cheque_especial


# Self
  O Self é uma palavra reservada que dá acesso ao objeto corrente. Assim dizemos que ao usarmos objeto.método estamos enviando o método ao objeto.
  
  
                                class Teste
                                 def meu_self
                                    puts  "Esse é meu self: #{self}"#No lugar do self vai voltar um endereço de memória, mostando que o self é a classe Teste
                                 end
                                end

                                class OutroTeste
                                 def meu_self
                                    puts  "Esse é meu self: #{self}"#Retorna outro endereço de memória(de OutroTeste que é a classe)
                                 end
                                end


                                teste = Teste.new
                                teste.meu_self

                                outro_teste = OutroTeste.new
                                outro_teste.meu_self
  
