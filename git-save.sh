if [ ! -d ".git" ]; then
  echo "not a git repository"
  exit 0
fi

echo "processing git repository"
exit 0
git stash save "Saving in stash"