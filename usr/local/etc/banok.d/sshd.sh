MIN=$(date +%M -d "-10 minutes")
DateFilter="$(date +%Y-%m-%dT%H: -d "-10 minutes")""${MIN:0:1}"
grep $DateFilter /var/log/secure | grep -e "Invalid user" | grep -v "  " | awk '{print $8}' | sort | uniq | Add "SSH Brute-Force. Ports scanning" "15,14,18,22"
grep $DateFilter /var/log/secure | grep -e "from invalid user" | awk '{print $9}' | sort | uniq | Add "SSH Brute-Force. Ports scanning" "15,14,18,22"
grep $DateFilter /var/log/secure | grep -e "by invalid user" | grep -v "  " | awk '{print $10}' | sort | uniq | Add "SSH Brute-Force. Ports scanning" "15,14,18,22"
grep $DateFilter /var/log/secure | grep -e "for invalid user" | grep -v "  " | awk '{print $14}' | sort | uniq | Add "SSH Brute-Force. Ports scanning" "15,14,18,22"
