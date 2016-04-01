#!/bin/bash

commitWithJohnny() {
  cd .johnny
  echo "there is not limit" > src/app.js
  git add .
  git commit -m "Johnny's commit"
  git push
  cd ..
}

editFile() {
  echo "sky is the limit" >> src/app.js
}

echo "KATA 2 - RESOLVING CONFLICTS"
echo
echo "SCENARIO DESCRIPTION"
echo "You made local changes to some files. Commit them, then pull remote
changes. Resolve the conflict and then push the resolution to the remote repo."

echo "For this exercise use 'git pull' to pull remote changes"

commitWithJohnny > /dev/null 2>&1
editFile > /dev/null 2>&1
