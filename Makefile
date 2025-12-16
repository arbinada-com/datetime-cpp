CXX = g++
CXXFLAGS = -std=c++11 -Wall -Wextra -I$(shell pwd) -isystem /usr/include/gtest

SRCS = datetime.cpp datetime_test.cpp

OBJ_DIR = objs
OBJS = $(addprefix $(OBJ_DIR)/,$(SRCS:.cpp=.o))

BIN_DIR = bin
EXEC = $(BIN_DIR)/datetime_test

LDFLAGS = -lgtest -lpthread

$(EXEC): $(OBJS) | $(BIN_DIR)
	$(CXX) $(CXXFLAGS) -o $@ $^ $(LDFLAGS)

$(OBJ_DIR)/%.o: %.cpp datetime.hpp | $(OBJ_DIR)
	$(CXX) $(CXXFLAGS) -c $< -o $@

$(OBJ_DIR):
	mkdir -p $(OBJ_DIR)

$(BIN_DIR):
	mkdir -p $(BIN_DIR)

all: $(EXEC)

clean:
	rm -rf $(OBJ_DIR)
	rm -rf $(BIN_DIR)

.PHONY: all clean
