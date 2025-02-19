#Check for OS Type
UNAME_S := $(shell uname -s)

#Linux
ifeq ($(UNAME_S), Linux)
	CC=g++
	LIBS= -lglut -lGLEW -lGL -lassimp `Magick++-config --cppflags --cxxflags --ldflags --libs`

#Mac
else
	CC=clang++
	LIBS= -framework OpenGL -framework GLUT -framework Cocoa -lGLEW -stdlib=libc++ -lassimp `Magick++-config --cppflags --cxxflags --ldflags --libs`
endif

#Paths, used on Mac; will not hurt other compiling
PATHI= -I/usr/local/include/
PATHL= -L/usr/local/lib/

#Compiler Flags
CXXFLAGS= -g -Wall -std=c++0x -DMAGICKCORE_HDRI_ENABLE=0 -DMAGICKCORE_QUANTUM_DEPTH=16


all: main.o shader.o object.o texture.o
	$(CC) $(CXXFLAGS) -o ../bin/solarsystem ../bin/main.o ../bin/shader.o ../bin/object.o ../bin/texture.o $(LIBS) $(PATHI) $(PATHL)

main.o: ../src/main.cpp
	$(CC) $(CXXFLAGS) -c ../src/main.cpp -o ../bin/main.o $(PATHI)

shader.o: ../src/shader.cpp ../src/shader.h
	$(CC) $(CXXFLAGS) -c ../src/shader.cpp -o ../bin/shader.o

object.o: ../src/object.cpp ../src/object.h
	$(CC) $(CXXFLAGS) -c ../src/object.cpp -o ../bin/object.o $(PATHI)

texture.o: ../src/texture.cpp ../src/texture.h
	$(CC) $(CXXFLAGS) -c ../src/texture.cpp -o ../bin/texture.o $(PATHI)

clean:
	rm ../bin/*.o ../bin/solarsystem
