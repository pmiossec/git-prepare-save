find . -maxdepth 1 \! \( -name . -o -name .. \) -type d -exec sh -c 'cd -P "$0" && git-prepare-save.sh' {} \;


