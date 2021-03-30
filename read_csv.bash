#!/bin/bash

echo "Reading The File...."
cat $1 | tty-table | less
cat $1 | tty-table | cat
echo "Done Reading File..."