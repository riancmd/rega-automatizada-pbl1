/*Autores: Edgar Rodrigo, Jimy Cerqueira, Rian Silva
Componente Curricular: TEC498 - MI Projetos de Circuitos Digitais
Concluido em: 10/05/2024
Declaro que este código foi elaborado por mim de forma individual e não contém nenhum
trecho de código de outro colega ou de outro autor, tais como provindos de livros e
apostilas, e páginas ou documentos eletrônicos da Internet. Qualquer trecho de código
de outra autoria que não a minha está destacado com uma citação para o autor e a fonte
do código, e estou ciente que estes trechos não serão considerados para fins de avaliação.*/
module main(m7, h, m, l, us, ua, t, ve, al, vs, bs, a, b, c, d, e, f, g, rd1, rd2, rd3);
	input m7, h, m, l, us, ua, t;
	output ve, al, vs, bs, a, b, c, d, e, f, g, rd1, rd2, rd3;
	
	mod1_tanquealarme(h, m, l, ve, al); // Chama o módulo que aciona o alarme (Al) e verifica válvula de entrada do tanque (Ve)
	
	mod2_tiporega(h, m, l, us, ua, t, vs, bs); // Chama o módulo que decide o tipo de rega (vs/Bs)
	
	mod3_m7(m7, h, m, l, vs, bs, a, b, c, d, e, f, g, rd1, rd2, rd3); // Chama o módulo que envia a sequência de sinais pro display M7
	
endmodule