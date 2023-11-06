programa
{
	// Biblioteca para tratamento de datas.
	inclua biblioteca Calendario --> data
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		/* 
		 * ========================== FUNÇÕES
		 * ano_atual()
		 * ----> Retorna o ano atual no formato YYYY.
		 * 
		 * mes_atual()
		 * ----> Retorna o mês atual no formato MM (1 - 12).
		 * 
		 * dia_mes_atual()
		 * ----> Retorna o dia do mês atual no formato DD (1 - 31).
		 * 
		 * dia_semana_atual()
		 * ----> Retorna o dia da semana atual, sendo que domingo é o primeiro dia (1 - 7).
		 * 
		 * hora_atual(lógico)
		 * ----> Retorna a hora atual no formato AM/PM caso o parâmetro seja verdadeiro, senão será no
		 *      formato tradicional (00-12 // 13-00).
		 * 
		 * minuto_atual()
		 * ----> Retorna o minuto atual (0 - 59).
		 * 
		 * segundo_atual()
		 * ----> Retorna o segundo atual (0 - 59).
		 * 
		 * dia_semana_abreviado(inteiro, logico, logico)
		 * ----> Retorna uma cadeia de caracteres representando o dia da semana:
		 * 
		 *      Ex: Seg, Ter, Dom etc...
		 * 
		 * dia_semana_curto(inteiro, logico, logico)
		 * ----> Retorna uma cadeia de caracteres representando o dia da semana:
		 * 
		 *       Ex: Segunda, Terça, Domingo etc...
		 * 
		 * dia_semana_completo(inteiro, logico, logico)
		 * ----> Retorna uma cadeia de caracteres representando o dia da semana:
		 * 
		 *       Ex: Segunda-Feira, Terça-Feira, Domingo etc...
		 * 
		 * Obs: Para essas três últimas funções, há dois parâmetros lógicos para indicar a caixa de
		 *      texto (alta ou baixa): 
		 * 
		 * nome_funcao(inteiro, falso, falso) -> Segunda-Feira
		 * nome_funcao(inteiro, verdadeiro, falso) -> SEGUNDA-FEIRA
		 * nome_funcao(inteiro, falso, verdadeiro) -> segunda-feira
		 * nome_funcao(inteiro, verdadeiro, verdadeiro) -> SEGUNDA-FEIRA
		 * 
		 * 
		 * ========================== CONSTANTES
		 * 
		 * Há algumas constantes definidas na biblioteca Calendario. Alguns exemplos são:
		 * 
		 * -------------------- Para dias da semana:
		 * DIA_DOMINGO = 1
		 * DIA_SEGUNDA_FEIRA = 2
		 * DIA_TERCA_FEIRA = 3
		 * DIA_QUARTA_FEIRA = 4
		 * DIA_QUINTA_FEIRA = 5
		 * DIA_SEXTA_FEIRA = 6
		 * DIA_SABADO = 7
		 * 
		 * -------------------- Para mêses do ano:
		 * MES_JANEIRO = 1
		 * MES_FEVEREIRO = 2
		 * MES_MARCO = 3
		 * MES_ABRIL = 4
		 * MES_MAIO = 5
		 * MES_JUNHO = 6
		 * MES_JULHO = 7
		 * MES_AGOSTO = 8
		 * MES_SETEMBRO = 9
		 * MES_OUTUBRO = 10
		 * MES_NOVEMBRO = 11
		 * MES_DEZEMBRO = 12
		 * 
		 */
		
		inteiro ano = data.ano_atual()
		inteiro mes = data.mes_atual()
		inteiro dia_mes = data.dia_mes_atual()
		inteiro dia_semana = data.dia_semana_atual()
		inteiro hora = data.hora_atual(falso)
		inteiro hora_am_pm = data.hora_atual(verdadeiro)
		inteiro minuto = data.minuto_atual()
		inteiro segundo = data.segundo_atual()
		
		escreva("Ano: ", ano, "\n")
		escreva("Mês: ", mes, "\n")
		escreva("Dia do mês: ", dia_mes, "\n")
		escreva("Dia da semana: ", dia_semana, "\n")
		escreva("Hora: ", hora, "\n")
		escreva("Hora (formato AM/PM): ", hora_am_pm, "\n")
		escreva("Minuto: ", minuto, "\n")
		escreva("Segundo: ", segundo, "\n")
		
		escreva("\n===============================\n")
		cadeia dia_abreviado = data.dia_semana_abreviado(data.dia_semana_atual() , falso, falso)
		cadeia dia_curto = data.dia_semana_curto(data.dia_semana_atual(), falso, falso)
		cadeia dia_completo = data.dia_semana_completo(data.dia_semana_atual(), falso, falso)
		
		escreva("Dia da semana abreviado: ", dia_abreviado, "\n")
		escreva("Dia da semana curto: ", dia_curto, "\n")
		escreva("Dia da semana completo: ", dia_completo, "\n")				
	}
}
