hcidump -a | egrep --line-buffered 'RSSI|bdaddr' | stdbuf -o 0 cut -f 8 -d ' ' | ./parse_addr_rssi.sh | egrep --line-buffered '54:6C:0E:A0:45:3E' | stdbuf -o 0 cut -c19- | stdbuf -o 0 head -n 2000
