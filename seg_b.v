/*Autores: Edgar Rodrigo, Jimy Cerqueira, Rian Silva
Componente Curricular: TEC498 - MI Projetos de Circuitos Digitais
Concluido em: 10/05/2024
Declaro que este código foi elaborado por mim de forma individual e não contém nenhum
trecho de código de outro colega ou de outro autor, tais como provindos de livros e
apostilas, e páginas ou documentos eletrônicos da Internet. Qualquer trecho de código
de outra autoria que não a minha está destacado com uma citação para o autor e a fonte
do código, e estou ciente que estes trechos não serão considerados para fins de avaliação.*/
module seg_b(m7, h, m, l, vs, bs, b); 
	input m7, h, m, l, vs, bs;
	output b;
	
	wire not_m7, not_vs, not_bs, not_l, not_m, and_1, and_2;
	
	// Declarando as portas not
	not not1 (not_m7, m7);
	not not2 (not_l, l);
	not not3 (not_vs, vs);
	not not4 (not_bs, bs);
	not not5 (not_m, m);
	
	// Declarando as portas and
	and and1 (and_1, not_vs, not_bs);
	and and2 (and_2, h, not_m);
	
	// Declarando a porta or para a saída b
	or or1 (b, not_m7, not_l, and_1, and_2);
	
endmodule