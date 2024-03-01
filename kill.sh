#!/bin/bash

if [[ -f pid ]]
then
	PID=$(cat pid)
	kill $PID 
	rm -v pid 
else
	echo "No PID file found. Was the emulator started using 'run.sh'?"
fi
