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
   EscrevaL("M�DIA: ", m:5:2)
   Se (m <= 10) e (m >= 9) Ent�o
      EscrevaL("APROVEITAMENTO: A")
   Sen�o
      Se (m < 9) e (m >= 8) Ent�o
         EscrevaL("APROVEITAMENTO: B")
      Sen�o
         Se (m < 8) e (m >= 7) Ent�o
            EscrevaL("APROVEITAMENTO: C")
         Sen�o
            Se (m < 7) e (m >= 6) Ent�o
               EscrevaL("APROVEITAMENTO: D")
            Sen�o
               Se (m < 6) e (m >= 5) Ent�o
                  EscrevaL("APROVEITAMENTO: E")
               Sen�o
                  Se (m < 5) e (m  >= 0) Ent�o
                     EscrevaL("APROVEITAMENTO: F")
                  Sen�o
                     Se(m > 10) ou (m < 0) Ent�o
                        EscrevaL("FALSO")
                     Sen�o
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