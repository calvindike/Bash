# This script is used to send an event to the datadog agent if a golden image key is found in the Salt key list.
# Script will be ran using cron.
# Add and uncomment the 2 lines below to /etc/datadog-agent/datadog.yaml then restart datadog-agent to ensure this event is sent.
#dogstatsd_non_local_traffic: yes
#bind_host: localhost


server=$(salt-key -L | grep gold-image)
  if [ $? -eq 0 ]; then
    for i in ${server[@]}; do
      title="Golden image datadog event from shell"
      text="${i} found in list of Salt keys"
      echo "_e{${#title},${#text}}:$title|$text|t:warning|#shell,bash"  >/dev/udp/localhost/8125
    done
  else
    echo "No golden-image key was found in Salt keys list"
  fi
