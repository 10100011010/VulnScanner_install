#!/bin/bash

# Install a2sv
echo 'Installing a2sv...'
git clone https://github.com/hahwul/a2sv.git
cd a2sv
./install.sh
cd ..

# Install nmap-vulners
echo 'Installing nmap-vulners...'
git clone https://github.com/vulnersCom/nmap-vulners.git
cd nmap-vulners
cp vulners.nse /usr/share/nmap/scripts/

# Create vulnscanner command
echo 'Creating vulscanner command...'
git clone https://github.com/10100011010/VulnScanner_Bash.git
cd VulnScanner_Bash
chmod +x vulnscan
cp vulnscan /bin/vulnscan

# Inform the user
echo -e '\nAll done!\n'
echo -e 'Use:\nvulnscan <domain>'
