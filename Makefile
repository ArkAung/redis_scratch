# Makefile

# Compiler
CC = gcc

# Targets
all: server client

# Server target
server: server.o
	$(CC) -o server server.o

# Client target
client: client.o
	$(CC) -o client client.o

# Server object file
server.o: server.cpp
	$(CC) -c server.cpp

# Client object file
client.o: client.cpp
	$(CC) -c client.cpp

# Clean up
clean:
	rm -f *.o server client
