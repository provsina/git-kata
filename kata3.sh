#!/bin/bash

source johnny.sh

editFile() {
  echo $1 >> src/app.js
}

echo "KATA 2 - RESOLVING CONFLICTS (REBASE)"
echo ""
echo "SCENARIO DESCRIPTION"
echo "You made local changes to some files. Commit them, then pull remote
changes. Resolve the conflict and then push the resolution to the remote repo."

echo "For this exercise use 'git pull --rebase' to pull remote changes"

commitWithJohnny "there is not limit" src/app.js "Johnny's commit" > /dev/null 2>&1
editFile "sky is the limit" > /dev/null 2>&1
