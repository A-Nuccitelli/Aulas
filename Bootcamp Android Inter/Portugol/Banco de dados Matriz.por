//Aula Matrizes e vetores
//Instrutor: Denilson Bonatti
//Aluno: Anderson Nuccitelli

programa
{
	
	funcao inicio()
	{
		//Matriz criado para armazenar 3 colunas
		cadeia cadastro[][]={{"","",""},{"","",""},{"","",""}}
		inteiro contador = 0
		inteiro cadastro1 = 0

		//Introdução para operação
		escreva ("Ola, sou um teste de banco de dados e gostaria de efetuar seu cadastro" + "\n")
		escreva ("para poder prosseguir, preciso que voce me informe os seguintes dados: " + "\n")

		//Loop contador de cadastro, introduzindo valores a cada linha e coluna)
		faca{
			
		escreva ("Nome: ")
		leia (cadastro[cadastro1][0])
		escreva ("Estado: ")
		leia (cadastro[cadastro1][1])
		escreva ("Telefone: ")
		leia (cadastro[cadastro1][2])
		cadastro1 ++
			
		}enquanto (cadastro1<=2)

		//Apenas para pular linha na exibição do console
		escreva ("\n")

		//Loop contador para exibição da tabela no console
		faca{

		escreva ("Nome: " + cadastro[contador][0] + "     Estado: " + cadastro[contador][1] + "     Telefone: " + cadastro[contador][2] + "\n")
		contador ++
			
		}enquanto (contador<=2)		
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 907; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */