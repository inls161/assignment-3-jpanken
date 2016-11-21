#!/bin/bash

#creates random string of numbers
ID=$(cat /dev/urandom | tr -dc '0-9' | fold -w 7 | head -n 1)
echo $ID