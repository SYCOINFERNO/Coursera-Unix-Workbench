# Makefile to generate README.md

# Variables
SCRIPT=guessinggame.sh
README=README.md

# Target to create README.md
$(README): $(SCRIPT)
	@echo "# Guessing Game" > $(README)
	@echo "Date and Time: $(shell date)" >> $(README)
	@echo "Number of lines of code: $(shell wc -l < $(SCRIPT))" >> $(README)

# Phony target
.PHONY: all clean

all: $(README)

clean:
	rm -f $(README)
