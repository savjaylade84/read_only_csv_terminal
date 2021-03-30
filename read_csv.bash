#!/bin/bash

echo "Reading The File...."

case $1 in 
	"-l")
	cat $2 | tty-table | less
	;;
	"-c")
	cat $2 | tty-table | cat
	;;
	"-m")
	cat $2 | tty-table | more
	;;
	"-t")
	cat $2 | tty-table | csv.txt
	echo "created csv.txt"
	;;
	"-v")
	echo "author: john jayson b. de leon"
	echo "github: savjaylade84"
	echo "@version 1.0"
	;;
	"-h" | *)
	echo "usage: ./read_csv [option] filename"
	echo "example : ./read_csv -t data.csv"
	echo "-t is for storing csv to txt"
	echo "-l is for using less to view csv"
	echo "-c is for using cat to view csv"
	echo "-m is for using more to view csv"
	echo "-v to view version and the author"
	;;
esac

echo "Done Reading File..."