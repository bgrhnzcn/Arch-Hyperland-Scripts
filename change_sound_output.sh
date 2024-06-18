CURR_DEVICE=$(pactl get-default-sink)

if [[ $CURR_DEVICE == *"USBGH8-Plus-7.1"* ]]; then	
	target_id=$(pactl list short sinks | grep "pci-0000_09_00" | awk '{print $1}')
	pactl set-default-sink $target_id 
elif [[ $CURR_DEVICE == *"pci-0000_09_00"* ]]; then
	target_id=$(pactl list short sinks | grep "USBGH8-Plus-7.1" | awk '{print $1}')
	pactl set-default-sink $target_id
fi

