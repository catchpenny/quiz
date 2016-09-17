#!/bin/bash

# TODO
# Improve tests

flag=1
sleep 5
if curl -s web | grep Quiz > /dev/null; then
    flag=0
else
    :
fi

if nc -z web 80; then
    flag=0
else
    :
fi

if nc -z app 8000; then
    flag=0
else
    :
fi

if nc -z db 3306; then
    flag=0
else
    :
fi

if [ "$flag" -eq "0" ]; then
    echo "Tests passed. :)"
else
    echo "Tests failed! :("
fi