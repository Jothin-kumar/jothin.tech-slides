import sys, json

filename = sys.argv[1]

with open(filename) as f:
    data = json.load(f)
with open(filename, "w") as f:
    json.dump(data, f, separators=(',', ':'))