import re
f = open("constants_c.circom","r")
file = f.read()
get_constants = re.findall(r'(\[(?:\[??[^\[]*?\]))', file)
#results  = get_constants.search(file)
print(get_constants[1])