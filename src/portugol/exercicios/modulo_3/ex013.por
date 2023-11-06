/*
 * Programa que leia três números inteiros e mostre-os em ordem crescente 
 * (do menor para o maior).
 */

programa
{
	funcao inicio()
	{
		inteiro a = 0, b = 0, c = 0
		
		escreva("Primeiro número (A): ")
		leia(a)
		escreva("Segundo número (B): ")
		leia(b)
		escreva("Terceiro número (C): ")
		leia(c)
		
		escreva("-------------------------------\n")
		se (a == b e b == c e a == c) {
			escreva("Todos são iguais!\n")
		} senao se (a == b e a > c) {
			escreva("O menor é C: ", c, "\n")
			escreva("O maior é A e B: ", a, "\n")
		} senao se (a == c e a > b) {
			escreva("O menor é B: ", b, "\n")
			escreva("O maior é A e C: ", a, "\n")
		} senao se (b == c e b > a) {
			escreva("O menor é A: ", a, "\n")
			escreva("O maior é B e C: ", b, "\n")
		} senao se (a > b e a > c) {
			se (b > c) {
				escreva("O menor é C: ", c, "\n")
				escreva("O intermediário é B: ", b, "\n")
			} senao se (c > b) {
				escreva("O menor é B: ", b, "\n")
				escreva("O intermediário é C: ", c, "\n")
			} senao {
				escreva("O menor é B e C: ", b, "\n")
			}
			escreva("O maior é A: ", a, "\n")
		} senao se (b > a e b > c) {
			se (a > c) {
				escreva("O menor é C: ", c, "\n")
				escreva("O intermediário é A: ", a, "\n")
			} senao se (c > a) {
				escreva("O menor é A: ", a, "\n")
				escreva("O intermediário é C: ", c, "\n")
			} senao {
				escreva("O menor é A e C: ", a, "\n")
			}
			escreva("O maior é B: ", b, "\n")
		} senao {
			se (a > b) {
				escreva("O menor é B: ", b, "\n")
				escreva("O intermediário é A: ", a, "\n")
			} senao se (b > a) {
				escreva("O menor é A: ", a, "\n")
				escreva("O intermediário é B: ", b, "\n")
			} senao {
				escreva("O menor é A e B: ", a, "\n")
			}
			escreva("O maior é C: ", c, "\n")
		}
	}
}
