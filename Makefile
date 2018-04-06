CC = ccomp
CFLAGS = -O2
LDFLAGS =
LIBS =
INCLUDE = -I$(SRC_DIR)

APP_NAME = Hello-CompCert
SRC_DIR = src
OBJ_DIR = build
SRC = $(wildcard $(SRC_DIR)/*.c)
OBJ = $(SRC:$(SRC_DIR)/%.c=$(OBJ_DIR)/%.o)

$(OBJ_DIR)/$(APP_NAME): $(OBJ)
	$(CC) -o $@ $^ $(LDFLAGS) $(LIBS)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -p $(OBJ_DIR)
	@$(CC) -MM -MP -MT $@ -MF $(@:.o=.d) $<
	$(CC) -c $(CFLAGS) $(INCLUDE) -o $@ $<

all: clean $(OBJ_DIR)/$(APP_NAME)

run:
	@make
	@cd $(OBJ_DIR) && ./$(APP_NAME)

clean:
	$(RM) $(OBJ) $(OBJ:.o=.d) $(OBJ_DIR)/$(APP_NAME)

-include $(OBJ:.o=.d)

.PHONY: all run clean
