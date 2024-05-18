/*Autores: Edgar Rodrigo, Jimy Cerqueira, Rian Silva 
Componente Curricular: TEC498 - MI Projetos de Circuitos Digitais
Concluido em: 10/05/2024
Declaro que este código foi elaborado por mim de forma individual e não contém nenhum
trecho de código de outro colega ou de outro autor, tais como provindos de livros e
apostilas, e páginas ou documentos eletrônicos da Internet. Qualquer trecho de código
de outra autoria que não a minha está destacado com uma citação para o autor e a fonte
do código, e estou ciente que estes trechos não serão considerados para fins de avaliação.*/

module mod2_tiporega(h, m, l, us, ua, t, vs, bs);
	input h, m, l, us, ua, t;
	output vs, bs;
	
	wire not_us, not_h, not_m, not_ua, not_t, and_1, and_2, and_3, and_4, and_5;
	
	/*Circuito de Vs
//	Declarando as portas not*/
	not not1 (not_us, us);
	not not2 (not_h, h);
	not not3 (not_m, m);
	
	//Declarando as portas and
	and and1 (and_1, m, l, not_us, ua, t);
	and and2 (and_2, not_h, not_m, not_us, l, ua);
	
	//Declarando a porta or para a saída Vs
	or or1 (vs, and_1, and_2);
	
	/*Circuito de Bs
	Declarando as portas not*/
	not not7 (not_ua, ua);
	not not11 (not_t, t);
	
	//Declarando as portas and
	and and3 (and_3, not_h, not_us, not_ua, l);
	and and4 (and_4, not_us, not_ua, l, m);
	and and5 (and_5, not_us, not_t, m, l);
	
	//Declarando a porta or para a saída Bs
	or or2 (bs, and_3, and_4, and_5);
	
	/*Circuito que envia tipo de rega para o m7
	
	or or3 (vs, and_1, and_2);
	or or4 (bs, and_3, and_4, and_5);*/
	
endmodule