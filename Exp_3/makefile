app: main.o decimalTo754.o IEEETodecimal.o # 目标文件: 依赖, 下一行是用依赖来干什么得出目标文件
	gcc main.o decimalTo754.o IEEETodecimal.o -o main.exe -lm

# -lm 链接数学库(IEEETodecimal里用到了pow())

main.o: main.c
	gcc -c main.c -o main.o

decimalTo754.o: decimalTo754.c
	gcc -c decimalTo754.c -o decimalTo754.o

IEEETodecimal.o: IEEETodecimal.c
	gcc -c IEEETodecimal.c -o IEEETodecimal.o -lm

clean:
	rm -f *.o

