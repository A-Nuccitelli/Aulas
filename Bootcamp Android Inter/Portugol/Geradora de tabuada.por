//Aula de logica de programação essencial
//Instrutor: Denilson Bonatti]
//Aluno: Anderson Nuccitelli

programa
{
	
	funcao inicio()
	{
		//Variaveis criadas
		inteiro contador,limite,resultado, tabuada

		//setado contador em 0 para inicio
		contador = 0

		//texto para comunicação com o operador + inserção de dados
		escreva("Ola, seja bem vindo ao gerador de tabuada!"+"\n")
		escreva("Para começarmos, digite qual numero quer que eu gere a tabuada: " + "\n")
		leia(tabuada)
		escreva("Agora eu preciso saber até que limite voce precisa: ")
		leia(limite)

		//loop contador para efetuar a operação aritimética
		faca{

			resultado = tabuada * contador
			escreva(tabuada +" x " + contador + " = " + resultado + "\n")
			contador ++

		}enquanto (contador<=limite)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 101; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */