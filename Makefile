CC = cc
TARGET = lsrebuild
SRC = lsrebuild.m
FLAGS = -Wall -O3 $(CFLAGS)
CFLAGS = -fobjc-arc -framework Foundation -framework MobileCoreServices
SIGN   := ldid -Sent.xml

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) -o $(TARGET) $(FLAGS) $(SRC)
	$(SIGN) $(TARGET)
