# Compiler and flags
CC      = gcc
CFLAGS  = -Wall -Wextra -Iinclude   # warnings + include path
LDFLAGS = -lcriterion               # link with Criterion test framework

# Project structure
SRC_DIR   = src
TEST_DIR  = tests
BUILD_DIR = build

# Source files
LIBSRC = $(SRC_DIR)/libstring.c

# Find all test files automatically (any .c file in tests/)
TESTSRC = $(wildcard $(TEST_DIR)/*.c)

# Build one test binary per test file
TESTBINS = $(patsubst $(TEST_DIR)/%.c,$(BUILD_DIR)/%,$(TESTSRC))

# Default target: build all tests
all: $(TESTBINS)

# Rule to build each test binary
$(BUILD_DIR)/%: $(TEST_DIR)/%.c $(LIBSRC) | $(BUILD_DIR)
	$(CC) $(CFLAGS) $^ -o $@ $(LDFLAGS)

# Create build directory if it doesn't exist
$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

# Run all tests
test: all
	@for t in $(TESTBINS); do \
		echo "Running $$t..."; \
		$$t; \
	done

# Clean build files
clean:
	rm -rf $(BUILD_DIR)
