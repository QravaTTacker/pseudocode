algoritmo "Aproveitamento de aluno"
var
   n1, n2, m : real
inicio

   EscrevaL("----------------------------------")
   EscrevaL("        Escola Vaga Goiaba        ")
   EscrevaL("----------------------------------")
   Escreva("PRIMEIRA NOTA: ")
   Leia(n1)
   Escreva("SEGUNDA NOTA: ")
   Leia(n2)


   EscrevaL("----------------------------------")
   m <- (n1+n2)/2
   EscrevaL("MÉDIA: ", m:5:2)
   Se (m <= 10) e (m >= 9) Então
      EscrevaL("APROVEITAMENTO: A")
   Senão
      Se (m < 9) e (m >= 8) Então
         EscrevaL("APROVEITAMENTO: B")
      Senão
         Se (m < 8) e (m >= 7) Então
            EscrevaL("APROVEITAMENTO: C")
         Senão
            Se (m < 7) e (m >= 6) Então
               EscrevaL("APROVEITAMENTO: D")
            Senão
               Se (m < 6) e (m >= 5) Então
                  EscrevaL("APROVEITAMENTO: E")
               Senão
                  Se (m < 5) e (m  >= 0) Então
                     EscrevaL("APROVEITAMENTO: F")
                  Senão
                     Se(m > 10) ou (m < 0) Então
                        EscrevaL("FALSO")
                     Senão
                        EscrevaL("FALSO")
                     FimSe
                  FimSe
               FimSe
            FimSe
         FimSe
      FimSe
   FimSe
   EscrevaL("----------------------------------")

fimalgoritmo