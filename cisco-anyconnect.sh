if [ -d /opt/cisco/anyconnect/bin ]; then
	/opt/cisco/anyconnect/bin/vpnui &
fi

if [ -d /opt/cisco/secureclient/bin ]; then
	/opt/cisco/secureclient/bin/vpnui &
fi
