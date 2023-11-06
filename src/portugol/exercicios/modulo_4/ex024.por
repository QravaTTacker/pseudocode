/*
 * Crie um programa que mostre uma pirâmide
 * desenhada na tela, composta por vários símbolos de *.
 * O usuário deverá indicar quantos níveis a pirâmide vai ter.
 * 
 *     ************
 *      **********
 *       ********
 *        ******
 *         ****
 *          **
 */

programa
{
     funcao inicio()
     {
     	inteiro andares = 0
          escreva("Quantos andares? ")
          leia(andares)

          para (inteiro i = 0; i < andares; i++) {
          	para (inteiro k = 0; k < i; k++)
          			escreva(" ")
          	para (inteiro j = andares * 2; j > i * 2; j--)
          		escreva("*")
          	escreva("\n")
          }
     }
}
