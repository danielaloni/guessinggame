all: README.md

README.md: guessinggame.sh
	echo "# A fun guessing game project!" >  README.md
	echo "" >> README.md
	echo "This make file ran for the last time on:" >> README.md
	date >> README.md
	echo "" >> README.md
	echo "The number of code lines of guessinggame.md is " >> README.md
	cat guessinggame.sh | wc -l >> README.md
	
clean:
	rm README.md
	
