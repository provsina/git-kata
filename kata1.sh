#!/bin/bash

source util.sh

echo "KATA 1 - STASHING FILES"
echo ""
echo "SCENARIO DESCRIPTION"
echo "You made local changes to some files. Pull remote
changes without committing your local changes"

commitWithJohnny "I am johnny 5" src/johnny.js "Johnny's commit" > /dev/null 2>&1
editFile "sky is the limit" > /dev/null 2>&1
