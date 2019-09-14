main:
	bison -d parser.y  
	flex lexer.l  
	gcc -o Simple parser.tab.c lex.yy.c -lm
	rm lex.yy.c parser.tab.c
	
main2:
	gcc main.c
	./a.out