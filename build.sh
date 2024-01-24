rm README.md
rm .vscode/tasks.json
rm .gitignore

# move slides from its folder to root.
mv -v slides/* .

# {name}.json -> minify -> {name}
for a in *.json;
do
    python3 minify.py "$a"
    mv -- "$a" "${a%.json}"
done

rm minify.py