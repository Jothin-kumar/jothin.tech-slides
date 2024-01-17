rm README.md;

# move slides from its folder to root.
mv -v slides/* .

# {name}.json (pretty) -> {name} (minified)
for a in *.json
    do cat "$a" | jq -c > "${a%.json}"
    rm "$a"
done 