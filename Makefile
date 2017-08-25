CC = ccomp
CFLAGS = -O2
LDFLAGS =

bin = Hello-CompCert
src = main.c hello-world.c

$(bin): $(src:.c=.o)
	$(CC) -o $@ $^ $(LDFLAGS)

all: clean $(bin)

SUFFIXES:.c .o
.c.o:
	$(CC) $(CFLAGS) -c $<

clean:
	$(RM) $(src:.c=.o) $(bin)

.PHONY: run
run:
	@make && ./$(bin)
