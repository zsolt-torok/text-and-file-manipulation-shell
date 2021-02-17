# The first three octets of the IP address in the file access.log are replaced with XXX.XXX.XXX.
sed -e 's/[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}/xxx.xxx.xxx/g' access.log > newaccess.log

# The information inside the first double quotes (Request type, URL and HTTP version) for POST requests only is printed to stdout.
awk -F'"' '$0=$2' access.log  | grep POST

# Lines between line 11 and line 20 of the file access.log are printed to stdout.
sed -n '800,900p' file.txt



# The first name of each employee from the file employees.json is printed.
jq '.employees[].firstName'  employees.json

# The first name of each employee followed by their phone number(s) from the file employees.json is printed.
jq '.employees[] | "\(.firstName) \(.phoneNumbers[].number)"' employees.json

# The first name of each employee and only their mobile phone number(s) from the file employees.json is printed.

