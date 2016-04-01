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
