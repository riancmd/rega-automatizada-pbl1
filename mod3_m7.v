/*Autores: Edgar Rodrigo, Jimy Cerqueira, Rian Silva
Componente Curricular: TEC498 - MI Projetos de Circuitos Digitais
Concluido em: 10/05/2024
Declaro que este código foi elaborado por mim de forma individual e não contém nenhum
trecho de código de outro colega ou de outro autor, tais como provindos de livros e
apostilas, e páginas ou documentos eletrônicos da Internet. Qualquer trecho de código
de outra autoria que não a minha está destacado com uma citação para o autor e a fonte
do código, e estou ciente que estes trechos não serão considerados para fins de avaliação.*/
module mod3_m7(m7, h, m, l, vs, bs, a, b, c, d, e, f, g, rd1, rd2, rd3);
	input m7, h, m, l, vs, bs;
	output a, b, c, d, e, f, g, rd1, rd2, rd3;
	
	// Chama os módulos de cada segmento do M7
	seg_a(m7, h, m, l, vs, bs, a);
	seg_b(m7, h, m, l, vs, bs, b);
	seg_c(m7, h, m, l, vs, bs, c);
	seg_d(m7, h, m, l, vs, bs, d);
	seg_e(m7, h, m, l, bs, e);
	seg_f(m7, h, m, l, vs, bs, f);
	seg_g(m7, h, m, l, vs, bs, g);
	
	// Chama o módulo que desliga os dígitos rd1, rd2 e rd3 do display
	rd_123(m7, rd1, rd2, rd3);
	
endmodule