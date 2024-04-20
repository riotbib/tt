CC     ?= gcc
CPKG    = `pkg-config --cflags glib-2.0 gdk-pixbuf-2.0 --libs libnotify`
CFLAGS  = -Wall -Wextra -pedantic --std=c11 -Ofast $(CPKG)
SRC     = tt.c
OBJ     = $(SRC:.c=.o)
OUTPUT  = tt 

default:
	$(CC) -c $(SRC) $(CFLAGS)
	$(CC) -o $(OUTPUT) $(OBJ) $(CFLAGS)

clean:
	$(RM) $(OUTPUT) $(OBJ)
