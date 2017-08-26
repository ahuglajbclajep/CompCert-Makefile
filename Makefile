CC = ccomp
CFLAGS = -O2
LDFLAGS =
INCLUDE = -I $(SRC_DIR)

APP_NAME = Hello-CompCert
SRC_DIR = src
OBJ_DIR = build
SRC = $(shell ls $(SRC_DIR)/*.c)
OBJ = $(SRC:$(SRC_DIR)/%.c=$(OBJ_DIR)/%.o)

$(OBJ_DIR)/$(APP_NAME): $(OBJ)
	$(CC) -o $@ $^ $(LDFLAGS)

all: clean $(OBJ_DIR)/$(APP_NAME)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -p $(OBJ_DIR)
	@$(CC) -MM -MP -MT $@ -MF $(@:.o=.d) $<
	$(CC) $(CFLAGS) $(INCLUDE) -o $@ -c $<

run:
	@make
	@cd $(OBJ_DIR) && ./$(APP_NAME)

clean:
	$(RM) $(OBJ) $(OBJ:.o=.d) $(OBJ_DIR)/$(APP_NAME)

-include $(OBJ:.o=.d)

.PHONY: all run clean
