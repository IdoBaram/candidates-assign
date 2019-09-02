#!/bin/bash
#add fix to exercise6-fix here
if (( $# < 2 )); then
    echo "Please insert a minum of 2 arguments"
    exit 1
fi

destination=${@: -1}
files=${@/$destination/""}
all_file_size=0
if [ "$(uname -n)" = "server1" ];
then
	destServer=server2
	echo $destServer
else
	destServer=server1
	echo $destServer
fi

for var in $files
	do
		filesize=$(stat -c%s "$var")
		all_file_size=$(echo "$all_file_size+$filesize" | bc)
		scp $var $destServer:$destination
	done
echo "$all_file_size";
