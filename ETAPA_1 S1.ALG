algoritmo "Etapa_1 S2"
var
   nome: vetor[1..20] de caracter
   idade: vetor[1..20] de inteiro
   opcoes,indice:inteiro
inicio
   indice <- 1
   enquanto (opcoes<>3) faca
      escreval("[1] Cadastrar usuário [2] Listar Usuários [3] Sair do sistema")
      leia (opcoes)

      escolha (opcoes)
      caso 1
         limpatela
         escreval ("Nome do usuário? ")
         leia (nome[indice])
         escreval ("Qual a idade? ")
         leia (idade[indice])
         indice <- indice + 1
         limpatela
      caso 2
         indice <- 1
         enquanto idade[indice] >= 3 faca
            escreva (indice,"-> ", nome[indice])
            escreval (idade[indice])
            indice <- indice + 1
         fimenquanto
         escreval ("-------------------------------------")
      fimescolha

   fimenquanto
   escreval ("Obrigado por usar o sistema!")

fimalgoritmo