# Makefile template for single-file BASIC projects on macOS 
# 
# Replace <file-name> with the name of the input file (the BASIC code file) 

# Variables

FILENAME = <file-name>

SOURCE	= $(FILENAME).bas
OUT 	= $(FILENAME).tap

OUT_DIR	= out

TAP	= bas2tap

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

tape: housekeeping
	@echo "Converting to TAP..."
	$(TAP) $(SOURCE) $(OUT_DIR)/$(OUT)

clean:
	@echo "Cleaning..."
	rm -rf $(OUT_DIR)

run: tape
	@echo "Running..."
	$(FUSE) $(FUSE_FLAGS) $(CURDIR)/$(OUT_DIR)/$(OUT)

