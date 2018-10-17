README.md: guessinggame.sh
	echo "# Guessing Game" > $@
	echo "### Date Run: $(shell date)" >> $@
	echo "Lines of Code in $<: $(shell wc -l < $<)" >> $@

fresh: clean README.md

clean:
	rm -f README.md

