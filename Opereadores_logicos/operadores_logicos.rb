number1 = 10
number2 = 20
number3 = 30
number4 = 40

#Pode se usar o && ou o and para esse tipo de verificação.
# && ou and
if (number1 > number2) && (number3 < number4) #Ambas as condições passadas como parametro tem que ser "true", se não o if não vai ser executado e o programa vai para a próxima verificação.
   puts "Condição atendida nos dois casos."
else #Neste caso as condições passadas para o if foram falsas, então o bloco else vai ser executado.
   puts "Condições falsas!"
end


#Pode se usar o || ou o or para este tipo de verificação.
if (number1 > number2) || (number3 < number4) #Não necessariamente ambas as condições tem que ser verdadeiras, apenas uma é necessaria.
   puts "Condição atendida nos dois casos."#O bloco executado será o primeiro, pois uma das condições é verdaderia.
else 
   puts "Condição nã atendida nos dois casos."
end

#Pode se usar o ! ou not para este tipo de operação.
if !(number3 > number4) #A negação de uma negação é uma afirmação.
   puts "Negação atendida!"
else 
   puts "Negação não atendida!"
end