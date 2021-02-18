clear
echo "sed -e 's/[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}/xxx.xxx.xxx/g' access.log"
sleep 2
clear
head -n 5 newaccess.log
sleep 3
clear
echo "awk -F'\"' '$0=$2' access.log  | grep POST"
sleep 2
awk -F'"' '$0=$2' access.log  | grep POST | head -n 5
sleep 3
clear
echo "sed -n '11,20p' access.log"
sleep 2
clear
sed -n '11,20p' access.log
sleep 3
clear
echo "jq '.employees[].firstName'  employees.json"
sleep 2
clear
jq '.employees[].firstName'  employees.json
sleep 3
clear
echo "jq '.employees[] | .firstName,.phoneNumbers' employees.json"
sleep 2
clear
jq '.employees[] | .firstName,.phoneNumbers' employees.json
sleep 3
clear
echo "jq -r '.employees | .[] | [.firstName,(.phoneNumbers[] | select(.type=="mobile").number)] | @tsv' employees.json"
sleep 2
clear
jq -r '.employees | .[] | [.firstName,(.phoneNumbers[] | select(.type=="mobile").number)] | @tsv' employees.json
sleep 3
clear

