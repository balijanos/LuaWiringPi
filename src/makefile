LUA_HEADER=/usr/include/lua5.2

LUA_LIBS=$(shell pkg-config --libs lua5.2)

WPI_OBJECTS=luawpi.o

ALL_OBJECTS=${WPI_OBJECTS}

core.so: ${ALL_OBJECTS} 
	gcc -shared -o core.so -lwiringPi -lpthread -fstack-protector ${LUA_LIBS} ${ALL_OBJECTS}

luawpi.o:
	gcc -fPIC -c  luawpi.c -I ${LUA_HEADER} -fstack-protector

clean:
	rm -rf *.o *.so
