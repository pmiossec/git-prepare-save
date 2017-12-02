if [ ! -d ".git" ]; then
  echo "Not a git repository!!!"
  exit 0
fi

echo "=> Processing git repository..."

echo "=> Stashing not commited changes..."
git stash save "Saving in stash" --include-untracked
git gc --aggressive --force
echo "=> Will delete:"
find . -maxdepth 1 \! \( -name .git -o -name . -o -name .. \)
find . -maxdepth 1 \! \( -name .git -o -name . -o -name .. \)  -exec rm -Rf '{}' \;


