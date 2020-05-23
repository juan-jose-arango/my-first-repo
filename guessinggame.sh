ans=-1

function numberfiles {
	echo "$(ls | wc -l)"
}

while [[ ans -ne $(numberfiles) ]]
do
	echo 'Guess how many files are stored in this directory:'
	read ans
	if [[ ans -gt $(numberfiles) ]]
	then
		echo 'Your guess is too high'
	elif [[ ans -lt $(numberfiles) ]]
	then
		echo 'Your guess is too low'
	elif [[ ans -eq $(numberfiles) ]]
	then
		echo 'Congratulations! You got the right answer!'
		echo 'End of the program.'
	fi
done
