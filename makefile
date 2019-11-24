all: compile run
compile:
	g++ -I ./include/ -o ./lib/glad.o -c ./src/glad.c
	g++ -I ./include/ -I ./include/glad/ -o ./bin/main ./lib/glad.o ./src/main.cpp -lglfw3 -lopengl32 -lgdi32
run:
	./bin/main