/*Autores: Edgar Rodrigo, Jimy Cerqueira, Rian Silva
Componente Curricular: TEC498 - MI Projetos de Circuitos Digitais
Concluido em: 10/05/2024
Declaro que este código foi elaborado por mim de forma individual e não contém nenhum
trecho de código de outro colega ou de outro autor, tais como provindos de livros e
apostilas, e páginas ou documentos eletrônicos da Internet. Qualquer trecho de código
de outra autoria que não a minha está destacado com uma citação para o autor e a fonte
do código, e estou ciente que estes trechos não serão considerados para fins de avaliação.*/
module seg_e(m7, h, m, l, bs, e);
	input m7, h, m, l, bs; 
	output e;
	
	wire not_h, not_m, not_bs, not_m7, and_1, and_2, and_3, and_4;
	
	// Declarando as portas not
	not not1 (not_h, h);
	not not2 (not_m, m);
	not not3 (not_bs, bs);
	not not4 (not_m7, m7);
	
	// Declarando as portas and
	and and1 (and_1, not_h, not_m, not_bs);
	and and2 (and_2, not_m7 ,m, l);
	and and3 (and_3, not_m7, not_h, not_m);
	and and4 (and_4, m, l, not_bs);
	
	// Declarando a porta or para a saída e
	or or1 (e, and_1, and_2, and_3, and_4);
	
endmodule