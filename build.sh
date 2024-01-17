rm README.md;

# move slides from its folder to root.
mv -v slides/* .

# {name}.json -> {name}
for a in *.json;
    do mv -- "$a" "${a%.json}";
done 