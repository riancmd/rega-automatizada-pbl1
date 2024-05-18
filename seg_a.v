/*Autores: Edgar Rodrigo, Jimy Cerqueira, Rian Silva
Componente Curricular: TEC498 - MI Projetos de Circuitos Digitais
Concluido em: 10/05/2024
Declaro que este código foi elaborado por mim de forma individual e não contém nenhum
trecho de código de outro colega ou de outro autor, tais como provindos de livros e
apostilas, e páginas ou documentos eletrônicos da Internet. Qualquer trecho de código
de outra autoria que não a minha está destacado com uma citação para o autor e a fonte
do código, e estou ciente que estes trechos não serão considerados para fins de avaliação.*/
module seg_a(m7, h, m, l, vs, bs, a);
	input m7, h, m, l, vs, bs;
	output a;
	 
	wire not_m7, not_h, not_m, not_vs, not_bs, and_1, and_2, and_4;
	
	// Declarando as portas not
	not not1 (not_m7, m7);
	not not2 (not_h, h);
	not not3 (not_m, m);
	not not4 (not_vs, vs);
	not not5 (not_bs, bs);
	
	// Declarando as portas and
	and and1 (and_1, not_m7, not_h, not_m);
	and and2 (and_2, not_m7, not_h, l);
	and and3 (and_3, not_h, not_m, not_vs, not_bs);
	and and4 (and_4, m7, m, l, not_vs, not_bs);
	
	// Declarando a porta or para a saída a
	or or1 (a, and_1, and_2, and_3, and_4);
	
endmodule