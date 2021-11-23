programa{
//escreva um programa que crie um menu de 5 opções, sendo [1] cadastro [2] consulta [3] busca [4] excluir [5] sair	
/*
Incluindo banco de dados
arquivo externo BD.txt


*/
inclua biblioteca Util --> tempo
inclua biblioteca Texto --> texto
inclua biblioteca Tipos --> tipos
inclua biblioteca Arquivos --> arquivoBibli
inteiro opcao = 0, cont = 0, ultimo = 0, idade[20]
cadeia nome[20], busca
const cadeia caminhoArquivo = ("./BD.txt")


funcao salvarDados(){
	
}
funcao abrirDados(){
	se(arquivoBibli.arquivo_existe(caminhoArquivo)){
		inteiro enderecoArquivo = arquivoBibli.abrir_arquivo(caminhoArquivo,0)
		cadeia nome
			para (cont=0;cont<50;cont++){
				nome = arquivoBibli.ler_linha(cont)
				se (nome == ""){
					pare
				}senao{
					nome[cont] = nome
				}
					
		
		}
	arquivoBibli.fechar_arquivo(enderecoArquivo)
}

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
		ultimo++
}
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
funcao menuExcluir(){
inteiro opcaoExcluir, respostaBusca = 0
caracter alteracao = 'n'
logico alteracaoLogico = falso 
limpa()
escreva("Você deseja alterar pelo Nome ou pelo Número?\n [1] Nome	[2] Número	[5] Voltar\n")
leia (opcaoExcluir)
limpa() 	
	se (opcaoExcluir == 1){
 	escreva ("Qual o nome que deseja excluir? ")
 	leia (busca)
	(busca) = texto.caixa_alta(busca)
		para (cont=0;cont<ultimo;cont++){
			se (nome[cont] == busca){
			escreva ("Nome "+nome[cont]+" encontrado na posição: "+cont)
			escreva ("\nSua idade é de: "+idade[cont]+"\n\n")
			escreva ("Tem certeza que deseja deletar esse cadastro? [S/N]\n")
			leia (alteracao)
			(alteracaoLogico) = tipos.caracter_para_logico(alteracao)
				se (alteracaoLogico == verdadeiro){	
				para (cont;cont<ultimo;cont++){
					nome[cont] = nome[cont+1]
					idade[cont] = idade[cont+1]}
					ultimo -= 1
					escreva ("\n Cadastro excluido com sucesso!")
					respostaBusca = 1
					tempo.aguarde(5000)}
					}
					}
				se (respostaBusca == 0){
					limpa()
					escreva ("Usuário \""+busca+" não encontrado no sistema.\nVerifique na opção 2 os registros.")
					tempo.aguarde(4000)}
					}
		
		se (opcaoExcluir == 2){
		escreva ("Qual o número que deseja excluir? ")
 		leia (cont)	
		escreva ("Nome "+nome[cont]+" encontrado na posição: "+cont)
		escreva ("\nSua idade é de: "+idade[cont])
		escreva ("Tem certeza que deseja deletar esse cadastro? [S/N]\n")
		leia (alteracao)
		(alteracaoLogico) = tipos.caracter_para_logico(alteracao)			
			se (alteracaoLogico == verdadeiro){
			para (cont;cont<ultimo;cont++){
				nome[cont] = nome[cont+1]
				idade[cont] = idade[cont+1]}
				ultimo -= 1
				escreva ("\n Cadastro excluido com sucesso!")
				respostaBusca = 1
					tempo.aguarde(5000)}
			se (respostaBusca == 0){
					limpa()
					escreva ("Usuário \""+busca+" não encontrado no sistema.\nVerifique os registros na opção 2.")
					tempo.aguarde(4000)}}}
funcao menuSair(){
		limpa()
		escreva ("\n\n\n   ***   Obrigado por usar o programa!   ***   \n\n\n")}
funcao menuContrario(){
		limpa()
		escreva ("	>>>	Digite uma opção válida!	<<<	")
		tempo.aguarde(2000)}

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
		menuExcluir()
 		pare	
		caso 5:
		menuSair()
		pare
		caso contrario:
		menuContrario()}
		pare
}
enquanto(opcao != 5)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 836; 
 * @DOBRAMENTO-CODIGO = [52, 76, 90, 145, 148];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */