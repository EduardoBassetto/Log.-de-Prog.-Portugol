Algoritmo "Resumão"
//Resumo de todo o básico do VisuAlg
Var
idade,cont,x,soma:inteiro

Inicio
//operadores aritméticos
// +  -  /  *  ^

//operadores relacionais
//  <  >  <=  >=  =  <>

//operadores de caracteres
// +


//     COMANDO DE DESVIO CONDICIONAL
escreval ("Digite sua idade")
leia (idade)
  se (idade >= 18) entao
  escreval ("Você é maior de idade")
  senao
  escreval ("Você não é maior de idade")
  fimse
  
//    COMANDO DE DESVIO CONDICIONAL COMPOSTO
escreval ("Digite sua idade")
leia (idade)
  se (idade >= 60) entao
  escreval ("Você esta na terceira idade.")
  senao
    se (idade >=18) entao
    escreval ("Você é maior de idade.")
    senao
      se (idade >= 14) entao
      escreval ("Você é um adolescente")
      senao
      escreval ("Você é uma criança")
      fimse
    fimse
  fimse


//    ESTRUTURAS DE REPETIÇÃO

escreval ("Digite o número que deseja a tabuada: ")
leia (x)

cont <- 1
//Enquanto
Enquanto cont <= 10 faca
soma <- (cont * x)
escreval (x," x ",cont," = ",soma)
cont <- (cont + 1)
fimenquanto

cont <- 1
//Repita
repita
soma <- (cont * x)
escreval (x," x ",cont," = ",soma)
cont <- (cont + 1)
ate (cont >= 10)

//Para  com passo
para cont de 1 ate 10 passo 2 faca
soma <- (cont * x)
escreval (x," x ",cont," = ",soma)
fimpara

Fimalgoritmo