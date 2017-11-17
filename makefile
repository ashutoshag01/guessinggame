project_file=guessinggame.sh

all:
	echo "# The GuessingGame project" > README.md
	echo >> README.md
	echo "Last updated by *$$(LC_TIME=C date)*" >> README.md
	echo >> README.md
	echo "The project consists of **$$(wc -l < ${project_file})** lines of code" >> README.md
	
