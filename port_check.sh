#!/bin/bash
nmap -iL /home/input.txt -p 21 > ftp_out.txt ; sleep 1 ; cat ftp_out.txt | grep -B 4 "open" > ftp_final.txt
nmap -iL /home/input.txt -p 80 > http_out.txt ; sleep 1 ; cat http_out.txt | grep -B 4 "open" > http_final.txt
