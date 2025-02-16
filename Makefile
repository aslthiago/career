# Define the directories and files
DIRS = en_us pt_br
FILES = template.tex


# Define the targets
all: compile

clean:
	@for dir in $(DIRS); do \
		for file in $(FILES); do \
			latexmk -cd -C src/$$dir/$$file; \
		done; \
	done

compile:
	@for dir in $(DIRS); do \
		for file in $(FILES); do \
			latexmk -cd -pdf src/$$dir/$$file; \
		done; \
	done

