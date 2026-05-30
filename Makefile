CC ?= $(CROSS_COMPILE)gcc
CFLAGS += $(shell pkg-config --cflags hello-makefile-library)
LDFLAGS += $(shell pkg-config --libs hello-makefile-library)
O ?= build

all: $(O)/hello-makefile-application

$(O)/hello-makefile-application: $(O)/hello-makefile-application.o
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

$(O)/%.o: %.c
	mkdir -p $(O)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(O)