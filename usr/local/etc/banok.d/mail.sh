MIN=$(date +%M -d "-10 minutes")
DateFilter="$(date +%Y-%m-%dT%H: -d "-10 minutes")""${MIN:0:1}"
grep $DateFilter /var/log/maillog | grep -e "authentication failed" | cut -d'[' -f3 | cut -d']' -f1  | sort | uniq | Add "SMTP Brute-Force" "11,15,18"
grep $DateFilter /var/log/maillog | grep -e "SSL_accept error"      | cut -d'[' -f3 | cut -d']' -f1  | sort | uniq | Add "SMTP Brute-Force" "11,15,18"
