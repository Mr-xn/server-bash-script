curl 127.0.0.1:5010/get_all/ > proxy.txt
sed -i "s/\[//" proxy.txt
sed -i "s/\]//" proxy.txt
sed -i "s/\"//g" proxy.txt
sed -i '/^\s*$/d' proxy.txt
sed -i 's/^[ ]*//g' proxy.txt
