/*Autores: Edgar Rodrigo, Jimy Cerqueira, Rian Silva
Componente Curricular: TEC498 - MI Projetos de Circuitos Digitais
Concluido em: 10/05/2024
Declaro que este código foi elaborado por mim de forma individual e não contém nenhum
trecho de código de outro colega ou de outro autor, tais como provindos de livros e
apostilas, e páginas ou documentos eletrônicos da Internet. Qualquer trecho de código
de outra autoria que não a minha está destacado com uma citação para o autor e a fonte
do código, e estou ciente que estes trechos não serão considerados para fins de avaliação.*/
module rd_123(m7, rd1, rd2, rd3); 
	input m7;
	output rd1, rd2, rd3;
	
	wire not_m7;

	// Declarando a porta not
	not not1 (not_m7, m7); //junto a m7, m7' será a outra variável de entrada do circuito
	
	// Declarando as portas or para rd1, rd2 e rd3
	or or1 (rd1, not_m7, m7); // A expressão m7 + m7' sempre retorna 1
	or or2 (rd2, not_m7, m7); // Criando uma constante de um bit de nível lógico alto
	or or3 (rd3, not_m7, m7); // Esse sinal desliga os leds de cada um dos dígitos
endmodule