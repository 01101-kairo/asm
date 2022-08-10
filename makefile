NOME = entrada

all: $(NOME).o
	ld -s -o $(NOME) $(NOME).o
	rm -rf *.o;
	clear ; ./$(NOME);

%.o: %.asm
	nasm -f elf64 $<
