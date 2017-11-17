project_file=guessinggame.sh

all:
	echo "# The GuessingGame project" > README.md
	echo >> README.md
	echo -n "Last updated by *" >> README.md
	LC_TIME=C date | tr '\n' '*' >> README.md
	echo >> README.md
	echo >> README.md
	echo -n "The project consists of **" >> README.md
	wc -l < ${project_file} | tr -d '\n' >> README.md
	echo "** lines of code." >> README.md
	
