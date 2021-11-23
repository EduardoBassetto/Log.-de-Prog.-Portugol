/* Criar estrutura de fila com as seguintes demandas:
 *  25 posições e essas funções abaixo
 *  a)Adicionar b)Remover c)Limpar d)Listar e)Vazia 
 *  Fazer todos os tratamentos para não crashar.
 */ 
programa
{

inclua biblioteca Util --> u

const inteiro vetor = 25
cadeia nome[vetor], enter
inteiro count = 0, last = 0, menu = 0

funcao menuPrincipal(){
			limpa()
			escreva ("[1]Adicionar [2]Remover [3]Limpar [4]Listar [5]Capacidade [0]Sair\n-> ")
			leia (menu)
}
funcao adicionar(){
	se (last == vetor){
		escreva ("Fila cheia!")
		u.aguarde(2000)
	}
	senao{
		limpa()
		count = last
		escreva ("Qual nome deseja adicionar a lista?\n-> ")
		leia (nome[count])
		last++
	}
}
funcao retirar(){
	se (last == 0){
		escreva ("A fila já está vazia!")
		u.aguarde(2000)
	}
	senao {
		count = 0
		last--
		escreva ("Retirando nome "+(nome[count]))
			para (count = 0; count < last; count++){
				se (count > last){
					nome[count] = ("")
				}
				senao{	
				nome[count] = nome[(count+1)]
				}
			}
			u.aguarde(2000)
	}
}
funcao limpar(){
	se (last == 0){
		escreva ("A fila já está vazia!")
		u.aguarde(1500)
	}
	senao{
		limpa()
		escreva ("Apagando todos os registros... Aguarde...")
			para (count = 0; count < last; count ++){
				nome[count] = ""
			}
		last = 0
		u.aguarde(1500)
	}
}
funcao listar(){
		se (last == 0){
			escreva ("A fila está vazia!")
			u.aguarde(1500)
		}
		senao{
			limpa()
			escreva ("Listando fila...    ENTER para sair\n")
				para (count = 0; count < last; count++){
					escreva ((count+1)+"-> "+(nome[count])+"\n")
				}
			leia (enter)
		}
}
funcao capacidade(){
	se (last == 0){
		escreva ("A fila está vazia")
		u.aguarde(1500)
	}
		senao se (last == 1){
			limpa()
			real porcentagem = 0
			porcentagem = (last*100)/vetor
			escreva ("A fila está "+(porcentagem)+"% cheia.\n\n")
			escreva ((last)+" posição ocupada de "+(vetor))
			escreva ("\n\nENTER para sair")
			leia (enter)
		}
			senao{
				limpa()
				real porcentagem = 0
				porcentagem = (last*100)/vetor
				escreva ("A fila está "+(porcentagem)+"% cheia.\n\n")
				escreva ((last)+" posições ocupadas de "+(vetor))
				escreva ("\n\nENTER para sair")
				leia (enter)
			}
}
funcao sair(){
	limpa()
	escreva ("\n\n  ***  Obrigado por usar o programa!  ***  \n\n\n")
}
funcao casoContrario(){
	escreva ("Digite uma opção válida!")
	u.aguarde(1500)
}

	funcao inicio(){
		faca{
			menuPrincipal()
				escolha (menu){
					caso 1:
						adicionar()
					pare
					caso 2:
						retirar()
					pare
					caso 3:
						limpar()
					pare
					caso 4:
						listar()
					pare
					caso 5:
						capacidade()
					pare
					caso 0:
						sair()
					pare
					caso contrario:
						casoContrario()
					pare
				}
		}enquanto (menu != 0)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2719; 
 * @DOBRAMENTO-CODIGO = [19, 32, 52, 67, 81, 105, 109];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */