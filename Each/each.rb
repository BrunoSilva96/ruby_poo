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