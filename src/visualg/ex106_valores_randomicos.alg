algoritmo "Valores Rand�micos"
var
   n, cont, vezes, tot : inteiro
   resp : caracter

procedimento space(valor, op : inteiro)
var
   i : inteiro
   msg : caractere
inicio
   escolha (op)
   caso 1
      msg <- "-"
   outrocaso
      msg <- "="
   fimescolha
   para i de 1 at� valor fa�a
      escreva(msg)
   fimpara
fimprocedimento

inicio
   timer 0
   repita
      tot := 0
      cont := 0
      enquanto cont < 5 fa�a
         n := 0
         vezes := 0
         enquanto (n <> 10) fa�a
            n := randi(10) + 1
            space(n^2, 1)
            escreval(n)
            vezes := vezes + 1
         fimenquanto
         cont := cont + 1
         escreval()
         space(int(exp(11,2)), 2)
         escreva(" ", vezes)
         tot := tot + vezes
         escreval()
         escreval()
      fimenquanto
      timer 1000
      escreva(" Total: ", tot)
      timer 0
      limpatela()1
   at� (tot >= 60)
fimalgoritmo