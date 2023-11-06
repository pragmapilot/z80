# Makefile template for single-file Z80 Assembly projects on macOS 
# 
# Replace <file-name> with the name of the input file (the Assembly code file) 

# Variables

FILENAME = hello

SOURCE	= $(FILENAME).asm
OBJ 	= $(FILENAME).bin 
OUT 	= $(FILENAME).tap

OUT_DIR	= out

ASM	= z80asm

TAP	= bin2tap
TAP_FLAGS = -b -cp 7 -cb 7 -ci 0

FUSE	= /Applications/Fuse.app/Contents/MacOS/Fuse
FUSE_FLAGS = --tape

# Targets

all: 	clean  run

housekeeping:
	@if [[ ! -d "$(OUT_DIR)" ]]; then \
		echo "Directory does not exist. Creating \"$(OUT_DIR)\"..."; \
		mkdir -p "$(OUT_DIR)"; \
		if [ $$? -eq 0 ]; then \
			echo "Directory created successfully."; \
		else \
			echo "Failed to create the directory."; \
		fi; \
	else \
		echo "Directory \"$(OUT_DIR)\" already exists. Nothing to do here..."; \
	fi

build: housekeeping
	@echo "Building..."
	$(ASM) -o $(OUT_DIR)/$(OBJ) $(SOURCE)

tape: build
	@echo "Converting to TAP..."
	$(TAP) $(TAP_FLAGS) -o $(OUT_DIR)/$(OUT) $(OUT_DIR)/$(OBJ)

clean:
	@echo "Cleaning..."
	rm -rf $(OUT_DIR)

run: tape
	@echo "Running..."
	$(FUSE) $(FUSE_FLAGS) $(CURDIR)/$(OUT_DIR)/$(OUT)

