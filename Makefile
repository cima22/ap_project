all: try

CC = g++

SRC_PATH = src
OBJ_PATH = obj
BIN_PATH = bin

try: $(OBJ_PATH)/main.o $(OBJ_PATH)/var.o
	$(CC) -o $(BIN_PATH)/out.x $(OBJ_PATH)/main.o $(OBJ_PATH)/var.o

$(OBJ_PATH)/main.o: $(SRC_PATH)/main.cpp
	$(CC) -o $(OBJ_PATH)/main.o -c $(SRC_PATH)/main.cpp

$(OBJ_PATH)/var.o: $(SRC_PATH)/var.cpp
	$(CC) -o $(OBJ_PATH)/var.o -c $(SRC_PATH)/var.cpp

clean:
	rm -rf $(BIN_PATH)/*
	rm -rf $(OBJ_PATH)/*
