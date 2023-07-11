hrs=$(date +%H)
mins=$(date +%M)
secs=$(date +%S)

echo "$((($secs*1000)+($mins*60*1000)+($hrs*60*60*1000))) | $(date +%T)"
