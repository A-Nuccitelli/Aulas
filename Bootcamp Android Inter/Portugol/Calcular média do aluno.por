programa
{
	
	funcao inicio()
	{
		real nota1,nota2,nota3,nota4,media
		cadeia aluno

		escreva("Ola professor(a), irei te auxiliar a calcular a média dos alunos.\n")
		escreva("Para isso, preciso que preencha as informações que serão solicitadas a seguir.\n")
		escreva("Insira o nome completo do aluno: ")
		leia(aluno)
		escreva("Insira a nota do mês de Janeiro: ")
		leia(nota1)
		escreva("Insira a nota do mês de Fevereiro: ")
		leia(nota2)
		escreva("Insira a nota do mês de Março: ")
		leia(nota3)
		escreva("Insira a nota do mês de Abril: ")
		leia(nota4)

		media = (nota1+nota2+nota3+nota4)/4
				
		escreva("O aluno : " + aluno + " obteve a média: " + media)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 648; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */