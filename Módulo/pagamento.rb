module Pagamento

   APROVADO =  "Pagamento aprovado!" # Trabalhando com constantes

   def pagar(bandeira, numero, valor)# Trabalhando com métodos
      "Pagando com o cartão #{bandeira} Número #{numero}, o valor de R$ #{valor}...."
   end

   class Finalizando # Trabalhando com classes
      def pagando
         "Processando pagamento..."
      end
   end
end