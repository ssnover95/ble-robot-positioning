hcidump -a | egrep --line-buffered 'RSSI|bdaddr' | stdbuf -o 0 cut -f 8 -d ' ' | ./parse_addr_rssi.sh | egrep --line-buffered '54:6C:0E:A0:46:CE|54:6C:0E:A0:44:71|54:6C:0E:A0:45:3E' | stdbuf -o 0 sed -e 's/54:6C:0E:A0:46:CE/1/; s/54:6C:0E:A0:44:71/2/; s/54:6C:0E:A0:45:3E/3/' | stdbuf -o 0 head -n $1