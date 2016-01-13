All: multi

multi: main.o ClientSocket.o ServerSocket.o Socket.o
	g++ main.o ClientSocket.o ServerSocket.o Socket.o -lpthread -o main
main.o: main.cpp
	g++ -c -pthread main.cpp
ClientSocket.o: ClientSocket.cpp
	g++ -c ClientSocket.cpp
ServerSocket.o: ServerSocket.cpp
	g++ -c ServerSocket.cpp
Socket.o: Socket.cpp
	g++ -c Socket.cpp
clean:
	rm -rf *o main
