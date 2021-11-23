algoritmo "Etapa_1 S2"
var
   nome: vetor[1..20] de caracter
   idade: vetor[1..20] de inteiro
   opcoes,indice:inteiro
   enter:caracter
inicio
   indice <- 1
   enquanto (opcoes<>3) faca
      limpatela
      escreval("[1] Cadastrar usuário [2] Listar Usuários [3] Sair do sistema")
      leia (opcoes)

      escolha (opcoes)
      caso 1
         limpatela
         escreval (">>> Nome do usuário? ")
         leia (nome[indice])
         escreval (">>> Qual a idade? (Idade mínima é 1)")
         leia (idade[indice])
         escreval ("")
         escreval (">>> Cadastro efetuado com sucesso!")
         escreval ("")
         escreval(">>> Pressione ENTER para voltar.")
         indice <- indice + 1
         leia (enter)
         limpatela
      caso 2
         limpatela
         indice <- 1
         enquanto idade[indice] > 0 faca
            escreval (indice,"-> ", nome[indice]:15, idade[indice])
            indice <- indice + 1
         fimenquanto
         escreval(">>> Pressione ENTER para voltar.")
         leia (enter)
         escreval ("-------------------------------------")

      caso 3
         limpatela
         escreval (">>> Obrigado por usar o sistema !")
      outrocaso
         escreval ("Digite um número entre 1 e 3.")
         escreval ("-------------------------------------")
      fimescolha
   fimenquanto

fimalgoritmo