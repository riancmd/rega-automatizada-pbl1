/*Autores: Edgar Rodrigo, Jimy Cerqueira, Rian Silva 
Componente Curricular: TEC498 - MI Projetos de Circuitos Digitais
Concluido em: 10/05/2024
Declaro que este código foi elaborado por mim de forma individual e não contém nenhum
trecho de código de outro colega ou de outro autor, tais como provindos de livros e
apostilas, e páginas ou documentos eletrônicos da Internet. Qualquer trecho de código
de outra autoria que não a minha está destacado com uma citação para o autor e a fonte
do código, e estou ciente que estes trechos não serão considerados para fins de avaliação.*/

module mod1_tanquealarme(h, m, l, ve, al);
	input h, m, l;
	output ve, al;
	
	wire not_h, not_m, not_l, and_1, and_2;
	
	/*CIRCUITO PARA Ve (Entrada do tanque)
	Declarando as portas not*/
	not not1 (not_h, h);
	not not2 (not_m, m);
	
	//Declarando as portas and
	and and1 (and_1, not_h, not_m);
	and and2 (and_2, not_h, l);
	
	//Declarando a porta or para a saída Ve
	or or1 (ve, and_1, and_2);
	
	/*CIRCUITO PARA Al (Alarme)
	Declarando as portas not*/
	not not5 (not_l, l);
	
	//Declarando a porta or para a saída Al
	
	or or2 (al, not_m, not_l);
	
endmodule