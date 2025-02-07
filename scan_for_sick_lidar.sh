#!/bin/bash

# Loop through IP range 192.168.0.1 to 192.168.0.255
for i in {1..255}; do
    SCANNERIPADDRESS="192.168.0.$i"
    echo "Testing $SCANNERIPADDRESS on port 2112..."
    
    # Run netcat command to check if the port is open
    nc -z -v -w5 $SCANNERIPADDRESS 2112 2>&1 | tee -a scan_results.log
done

echo "Scan completed. Results are saved in scan_results.log"