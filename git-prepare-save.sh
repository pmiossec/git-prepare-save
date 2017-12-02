echo -e "--------------------------------------"
echo -e "folder:${PWD}"
echo -e "--------------------------------------"

if [ ! -d ".git" ]; then
  echo -e "\nNot a git repository!!!"
  exit 0
fi

echo -e "\n=> Processing git repository..."

echo -e "\n=> Stashing not commited changes..."
git stash save "Saving in stash" --include-untracked
git gc --aggressive --force
echo -e "\n=> Will delete:"
find . -maxdepth 1 \! \( -name .git -o -name . -o -name .. \)
find . -maxdepth 1 \! \( -name .git -o -name . -o -name .. \)  -exec rm -Rf '{}' \;
echo -e "\nDone.\n"


