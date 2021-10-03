CC = g++

.SUFFIXES : .cpp .o

OBJS = main.o array.o rangearray.o
SRCS = main.cpp array.cpp rangearray.cpp

CFLAGS = -g -c

TARGET = RangeArray

$(TARGET) : $(OBJS)
	$(CC) -o $(TARGET) $(OBJS)

.PHONY : clean

clean :
	rm -rf $(OBJS) $(TARGET)

main.o : RangeArray.h array.cpp main.cpp rangearray.cpp
array.o : Array.h
rangearray.o : RangeArray.h
RangeArray.h : Array.h