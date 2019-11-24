all: compile run
compile:
	g++ -I ./include/ -o ./lib/glad.o -c ./src/glad.c
	g++ -I ./include/ -o ./lib/Shader.o -c ./src/Shader.cpp
	g++ -I ./include/ -o ./bin/main ./lib/glad.o ./lib/Shader.o ./src/main.cpp -lglfw3 -lopengl32 -lgdi32
run:
	./bin/main