resetRepo > /dev/null 2>&1
setupJohnny > /dev/null 2>&1

resetRepo() {
  rm -rf src
  mkdir src
  echo "Hello world" > src/app.js
  git add .
  git commit -m "Resetting repo"
  git push
}

setupJohnny() {
  rm -rf .johnny
  mkdir .johnny
  cp -r .git .johnny
  cd .johnny
  git config user.name Johnny
  git config user.email johnny@who.com
  git reset --hard
  cd ..
}

commitWithJohnny() {
  cd .johnny
  echo $1 > $2
  git add .
  git commit -m "$3"
  git push
  cd ..
}

editFile() {
  echo $1 >> src/app.js
}

commitChange() {
  editFile $1
  git commit -am $2
}
