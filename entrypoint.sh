#!/bin/bash
# Get the Pod's IP address using kubectl
POD_IP=$POD_IP

# Update the configuration file with the Pod's IP address
sed -i "s/NEAR_RIC_IP = .*/NEAR_RIC_IP = $POD_IP /" /usr/local/etc/flexric/flexric.conf

/usr/local/bin/nearRT-RIC

cat /usr/local/etc/flexric/flexric.conf

# Run the nearRT-RIC command
echo "Running nearRT-RIC..."
/usr/local/bin/nearRT-RIC
echo "nearRT-RIC execution completed."
