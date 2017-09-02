#!/bin/bash
dir="/home/uk/Downloads/vpnbook"
echo "1. ca1"; echo "2. de233"; echo "3. euro1"; echo "4. euro2"; echo "5. us1"; echo "6. us2";
read opt
case "$opt" in
	"1")
	var="ca1"
	;;
	"2")
	var="de233"
	;;
	"3")
	var="euro1"
	;;
	"4")
	var="euro2"
	;;
	"5")
	var="us1"
	;;
	"6")
	var="us2"
	;;
	*)
	echo "between 1 and 6 incl."
	exit 1
esac
echo "You have selecter "$var" server"
sudo openvpn --config $dir/tcp443/vpnbook-$var-tcp443.ovpn --auth-user-pass $dir/user-pass.txt --http-proxy 10.1.1.55 80 $dir/proxy55.txt basic
exit
