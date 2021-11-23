programa{
//escreva um programa que crie um menu de 4 opções, sendo [1] cadastro [2] consulta [3] busca [4] sair	
inclua biblioteca Util --> tempo
inclua biblioteca Texto --> texto
inclua biblioteca Tipos --> tipos
inteiro opcao = 0, cont = 0, ultimo = 0, idade[20]
cadeia nome[20], busca

funcao menuBemVindo(){
		limpa()
		escreva ("Bem vindo ao sistema de cadastramento\n")
		escreva ("[1] Cadastro [2] Consulta/Alteração [3] Busca [4] Excluir [5] Sair\n")
		leia (opcao)}
funcao menuCadastro(){
		limpa()
		cont = ultimo
		escreva ("Escreva o nome: ")
		leia (nome[cont])
		(nome[cont]) = texto.caixa_alta(nome[cont])
		escreva ("Escreva a idade: ")
		leia (idade[cont])
		ultimo++}
funcao menuConsulta(){
		limpa()
		caracter alteracao = 'n'
		logico alteracaoLogico = falso
		para (cont=0;cont<ultimo;cont++){
		escreva (cont+"-> "+nome[cont])
		escreva (" "+idade[cont])
		escreva ("\n")}
		escreva ("Deseja alterar algum cadastro? [S/N]: ")
		leia (alteracao)
		(alteracaoLogico) = tipos.caracter_para_logico(alteracao)
			se (alteracaoLogico == verdadeiro){
				escreva ("Digite a posição do nome que deseja alterar: ")
				leia (cont)
				limpa()
				escreva ("O nome que irá ser alterado é: "+nome[cont]+".\nDeseja alterar este nome? [S/N]: ")
				leia (alteracao)
				(alteracaoLogico) = tipos.caracter_para_logico(alteracao)
				se (alteracaoLogico == verdadeiro){
					escreva ("Novo nome: ")
					leia (nome[cont])
					nome[cont] = texto.caixa_alta(nome[cont])
					escreva ("Nova idade: ")
					leia (idade[cont])}}}
funcao menuBusca(){
		limpa()
		inteiro respostaBusca = 0
		escreva ("Digite o nome que deseja buscar: \n")
		leia (busca)
		(busca) = texto.caixa_alta(busca)
		para (cont=0;cont<ultimo;cont++){
			se (nome[cont] == busca){
			escreva ("Nome "+nome[cont]+" encontrado na posição: "+cont)
			escreva ("\nSua idade é de: "+idade[cont])}
			respostaBusca = 1}
			se (respostaBusca == 0){
			escreva ("Nome não encontrado no sistema.")}
			tempo.aguarde(4000)}
funcao menuSair(){
		limpa()
		escreva ("Obrigado por usar o programa!")}
funcao menuContrario(){
		limpa()
		escreva ("	>>>	Digite uma opção válida!	<<<	")
		tempo.aguarde(2000)}
funcao menuExluir(){
	
}

	funcao inicio(){	
faca{
menuBemVindo()	
	escolha(opcao){
		caso 1:
		menuCadastro()
		pare
		caso 2:
		menuConsulta()
		pare
		caso 3:
		menuBusca()
		pare
		caso 4:
 		pare	
		caso 5:
		menuSair()
		caso contrario:
		menuContrario()}
}
enquanto(opcao != 5)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2371; 
 * @DOBRAMENTO-CODIGO = [8, 13, 60, 63];
 * @PONTOS-DE-PARADA = 75;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */