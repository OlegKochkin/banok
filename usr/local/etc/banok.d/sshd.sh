MIN=$(date +%M -d "-10 minutes")
DateFilter="$(date +%Y-%m-%dT%H: -d "-10 minutes")""${MIN:0:1}"
grep $DateFilter /var/log/secure | grep -e "Invalid user" | awk '{print $8}' | sort | uniq | Add "SSH Brute-Force. Ports scanning" "15,14,18,22"
