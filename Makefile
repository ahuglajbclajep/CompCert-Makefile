CC = ccomp
CFLAGS = -O2
LDFLAGS =

bin = Hello-CompCert
src = main.c hello-world.c

.PHONY: run
.SUFFIXES: .c .o

$(bin): $(src:.c=.o)
	$(CC) -o $@ $^ $(LDFLAGS)

all: clean $(bin)

.c.o:
	$(CC) $(CFLAGS) -c $<

run:
	@make && ./$(bin)

clean:
	$(RM) $(src:.c=.o) $(bin)
