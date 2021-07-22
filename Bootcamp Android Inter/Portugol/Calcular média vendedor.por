programa
{
	
	funcao inicio()
	{
		real vendas1,vendas2,vendas3,vendas4,media
		cadeia vendedor

		escreva("Ola vendedor, irei te auxiliar a calcular a média de suas vendas.\n")
		escreva("Para isso, preciso que preencha as informações que serão solicitadas a seguir.\n")
		escreva("Insira seu nome completo: ")
		leia(vendedor)
		escreva("Insira quanto vendeu no mês de Janeiro: ")
		leia(vendas1)
		escreva("Insira quanto vendeu no mês de  Fevereiro: ")
		leia(vendas2)
		escreva("Insira quanto vendeu no mês de Março: ")
		leia(vendas3)
		escreva("Insira quanto vendeu no mês de Abril: ")
		leia(vendas4)

		media = (vendas1+vendas2+vendas3+vendas4)/4
				
		escreva("Parabens vendedor " + vendedor + " voce teve um faturamento total de: R$ " + (vendas1+vendas2+vendas3+vendas4)+ "\n")
		escreva("Sua média de vendas é: " + "R$ " + media)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 688; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */