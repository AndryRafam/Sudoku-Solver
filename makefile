SRC:= $(wildcard Core/* .cpp)

MAIN:= $(wildcard Main/* .cpp)

OBJ:= $(SRC:.cpp=.o) \
	 $(MAIN:.cpp=.o)

exe: $(OBJ) 
	$(CXX) -o $@ $^

.PHONY: clean
	rm -f $(OBJ) exe  
