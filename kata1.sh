#!/bin/bash

commitWithJohnny() {
  cd .johnny
  echo "console.log('I am johnny')" > src/johnny.js
  git add .
  git commit -m "Johnny's commit"
  git push
  cd ..
}

editFile() {
  echo "console.log('sky is the limit')" >> src/app.js
}

echo "KATA 1 - STASHING FILES"
echo
echo "SCENARIO DESCRIPTION"
echo "You made local changes to some files. Pull remote
changes without committing your local changes"

commitWithJohnny > /dev/null 2>&1
editFile > /dev/null 2>&1
