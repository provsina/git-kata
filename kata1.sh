#!/bin/bash

commitWithJohnny() {
  cd .johnny
  echo "I am johnny 5" > src/johnny.js
  git add .
  git commit -m "Johnny's commit"
  git push
  cd ..
}

editFile() {
  echo "sky is the limit" >> src/app.js
}

echo "KATA 1 - STASHING FILES"
echo
echo "SCENARIO DESCRIPTION"
echo "You made local changes to some files. Pull remote
changes without committing your local changes"

commitWithJohnny > /dev/null 2>&1
editFile > /dev/null 2>&1
