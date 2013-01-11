function myip
  ifconfig | grep "inet " | grep -v 127.0.0.1 | tr -s ' ' | cut -d ' ' -f 2
end
