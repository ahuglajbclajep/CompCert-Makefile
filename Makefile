CC = ccomp
CFLAGS =
LDFLAGS =
LIBS =

BUILD_DIR = build

bin = Hello_CompCert
entry_point = main.c
src = hello-world.c

all: run

.PHONY: build
build:
	@mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) $(entry_point) $(src) $(LDFLAGS) $(LIBS) -o $(BUILD_DIR)/$(bin)

clean:
	rm -rf $(BUILD_DIR)

run: build
	@cd $(BUILD_DIR) && ./$(bin)
