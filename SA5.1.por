//fazer estrutura first in, last out
// A)Empilhar b)Desempilhar c)Limpar d)Listar e)Teste
programa{

inclua biblioteca Util --> u

const inteiro vetor = 20 //variavel que define o tamanho da pilha
inteiro menu = 1, last = 0, count = 0
cadeia nome [vetor], enter = ("")
real porcentagem = 0

funcao menuPrincipal(){
	limpa()
	escreva("[1]Empilhar [2]Desempilhar [3]Limpar [4]Listar [5]Teste [6]Ajuda [0]Sair\n")
	escreva("-> ")
	leia (menu)
}
funcao empilhar(){
	se ( last == vetor){
		escreva ("\n  ***  A pilha está cheia!  ***  ")
		u.aguarde(1500)
	}
	senao{
		limpa()
		escreva ("Qual nome deseja adicionar?\n-> ")
		count = last
		leia(nome[count])
		last++
		escreva ("\n\n ***  Nome adicionado com sucesso!  ***  ")
		u.aguarde(1000)
	}	
}
funcao desempilhar(){
	se (last == 0){
		escreva ("\n  ***  A pilha está vazia!  ***  \n")
		u.aguarde(1500)
	}
	senao{
		limpa()
		escreva ("Retirando o nome \""+nome[last--]+"\" da pilha...")
		u.aguarde(1500)
	}
}
funcao limpar(){
	se (last == 0){
		escreva ("\n  ***  A pilha já está vazia!  ***  \n")
		u.aguarde	(1500)
	}
	senao{
          limpa()
		escreva ("Limpando todos os registros... Aguarde...\n")
		para (count = last; count > 0; count--){
			escreva ("\nApagando posição "+(count))
			u.aguarde(150)
			nome[count] = ("")
		}
		last = 0
		escreva ("\n\nENTER para sair")
		leia (enter)
		
	}
}		
funcao listar(){
	se (last == 0){
		escreva ("\n  ***  A pilha está vazia!  ***  \n")
		u.aguarde(1500)
	}
	senao{
		limpa()
		escreva ("Listagem da pilha     ENTER para sair\n")
			para (count = last; count > 0; count--){
			escreva ((count)+"-> "+(nome[count-1])+"\n")
			}
		leia (enter)
	}
}
funcao capacidade(){
	se (last == 0){
		escreva ("\n  ***  A pilha está vazia!  ***  \n")	
		u.aguarde(1500)
	}
	senao{
		porcentagem = (last*100)/vetor
		limpa()
		escreva("A pilha está "+(porcentagem)+"% cheia.\n\n")
		escreva((last)+" posições de "+(vetor)+" estão ocupadas.\n\n")
		escreva("ENTER para sair")
		leia (enter)
	}
}
funcao ajuda(){
		limpa()
		escreva ("[1]Empilhar, adiciona um nome ao topo.\n")
		escreva ("[2]Desempilhar, retira o nome do topo.\n")
		escreva ("[3]Limpar, apaga todos os registros.\n")
		escreva ("[4]Listar, mostra todos os registros.\n")
		escreva ("[5]Teste, mostra em porcentagem a capacidade da pilha.\n\n")
		escreva ("ENTER para retornar")
		leia (enter)
}	
funcao casoContrario(){
	limpa()
	escreva("\n\n *** Digite uma opção válida! *** \n")
	u.aguarde(1000)
}
	
funcao inicio(){
	faca{
		menuPrincipal()
		escolha (menu){
			caso 1:{
				empilhar()
			pare}
			caso 2:{
				desempilhar()
			pare}
			caso 3:{
				limpar()
			pare}
			caso 4:{
				listar()
			pare}
			caso 5:{
				capacidade()
			pare}
			caso 6:{
				ajuda()
			pare}
			caso 0:{
				limpa()
				escreva ("\n  ***  Obrigado por usar o programa!  *** \n\n\n")
			pare}
			caso contrario:{
				casoContrario()
			pare}
		}
	} enquanto (menu != 0)	
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 260; 
 * @DOBRAMENTO-CODIGO = [32, 43, 62, 76, 90, 100];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */