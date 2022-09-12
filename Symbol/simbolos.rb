"Bruno".object_id#Retorna o endereço de memória
"Bruno".object_id#Retorna o endereço de memória mas em um lugar alocado diferente.
:Bruno.object_id#Retorna o endereço de memóra e diferente de uma string qualquer, se eu chamar novamente o simbolo vai me devolver o mesmo lugar que alocou na memória.
:Bruno.object_id

----------------------------------------------------
#Muito utilizado em hashe
hashe = {bruno: "Bruno"}

----------------------------------------------------

"bruno".to_sym#Transforma em simbolo.