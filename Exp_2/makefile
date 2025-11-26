# target: dependencies
# 		command

# 链接所有编译好的
app: main.o decimalToBinary.o binaryToDecimal.o binaryToTrueform.o trueformToBinary.o binaryToInverse.o inverseToBinary.o binaryToComplement.o complementToBinary.o 
	gcc main.o decimalToBinary.o binaryToDecimal.o binaryToTrueform.o trueformToBinary.o binaryToInverse.o inverseToBinary.o binaryToComplement.o complementToBinary.o -o main.exe 

#gcc -c只编译不链接
main.o: main.c
	gcc -c main.c -o main.o

decimalToBinary.o: decimalToBinary.c
	gcc -c decimalToBinary.c -o decimalToBinary.o

binaryToDecimal.o: binaryToDecimal.c
	gcc -c binaryToDecimal.c -o binaryToDecimal.o

binaryToTrueform.o: binaryToTrueform.c
	gcc -c binaryToTrueform.c -o binaryToTrueform.o

trueformToBinary.o: trueformToBinary.c
	gcc -c trueformToBinary.c -o trueformToBinary.o

binaryToInverse.o: binaryToInverse.c
	gcc -c binaryToInverse.c -o binaryToInverse.o

inverseToBinary.o: inverseToBinary.c
	gcc -c inverseToBinary.c -o inverseToBinary.o

binaryToComplement.o: binaryToComplement.c
	gcc -c binaryToComplement.c -o binaryToComplement.o

complementToBinary.o: complementToBinary.c
	gcc -c complementToBinary.c -o complementToBinary.o

clean:
	rm -f *.o