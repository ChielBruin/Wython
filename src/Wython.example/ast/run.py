import ast
from os import path

file_name = "./example1.py"
directory_name = path.dirname(file_name)
full_path = path.join(directory_name, file_name)

with open(full_path) as f:
    data = f.read()

tree = ast.parse(data, full_path)
print(tree)

