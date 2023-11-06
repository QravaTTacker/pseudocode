programa
{
     inclua biblioteca Matematica --> m
     inclua biblioteca Tipos --> t

     funcao inicio()
     {
     	// Estrada de dados
          inteiro size = 0
          escreva("Número de linha: ")
          leia(size)
          
          // Saída de dados
          inteiro aux = size
          para (inteiro i = 0; i < size * 2 - 1; i++) 
          	repeat(" *", size - m.valor_absoluto(t.inteiro_para_real(--aux)))
     }

     funcao repeat(cadeia string, real count)
     {
     	para (inteiro j = 0; j < t.real_para_inteiro(count); j++) escreva(string)
     	escreva("\n")
     }
}
