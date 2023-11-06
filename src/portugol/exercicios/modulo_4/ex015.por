/*
 * Escreva um programa que leia vários números usando a estrutura FACA..ENQUANTO. 
 * No final, mostre:
 * - Quantos valores foram digitados
 * - Quantos valores pares foram digitados
 * - Qual foi o menor valor ímpar digitado
 */

programa
{
     inclua biblioteca Tipos --> ty
     inclua biblioteca Texto --> tx

     funcao inicio()
     {
          inteiro valor = 0
          inteiro pares = 0
          inteiro impares = 0
          inteiro menor_impar = 0
          inteiro total_valores = 0

          caracter resp = ' '

          faca {
               total_valores++
               escreva("Digite o ",  total_valores, "º valor: ")
               leia(valor)
               se (valor % 2 == 0) {
                    pares++
               } senao {
                    impares++
                    se (impares == 1) menor_impar = valor
                    senao se (valor < menor_impar) menor_impar = valor
               }
               faca {
                    escreva("Continuar? [S/N]\n")
                    escreva(">>> ")
                    leia(resp)
                    resp = ty.cadeia_para_caracter(tx.caixa_alta(ty.caracter_para_cadeia(resp)))
               } enquanto (resp != 'N' e resp != 'S')
          } enquanto (resp != 'N')
          escreva("=========================================\n")
          escreva("Ao todo, você digitou ", total_valores, " valores.\n")
          escreva("Você digitou ", pares, " valores pares.\n")
          escreva("O valor ", menor_impar, " é o menor valor ímpar.\n")
     }
}
