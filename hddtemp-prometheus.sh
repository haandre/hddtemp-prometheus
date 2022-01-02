#!/bin/sh

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

if [[ -z "${FOLDER}" ]];then
    echo "environment variable FOLDER missing!"
   exit 1
fi

if [[ -z "${FILE}" ]];then
    echo "environment variable FILE missing!"
   exit 1
fi

if [ ! -d $FOLDER ]; then
   mkdir -p $FOLDER
fi

LIST=$(ls /dev/sd[a-z])
OUTPUT=""
for DISK in $LIST
do
    SERIAL=$(udevadm info --query=property --name=$DISK | grep ID_SERIAL_SHORT | cut -d "=" -f 2)
    TEMP=$(hddtemp $DISK -n)
    TMP="node_hwmon_temp_celsius{chip=\"$DISK\",sensor=\"temp1\",serial=\"$SERIAL\"} $TEMP\n"
    OUTPUT="$OUTPUT$TMP"
    
done

LIST=$(ls /dev/nvme[0-9]n1)
for DISK in $LIST
do
    SERIAL=$(udevadm info --query=property --name=$DISK | grep ID_SERIAL_SHORT | cut -d "=" -f 2)
    TEMP=$(smartctl --all /dev/nvme1n1 | grep Temperature: | grep -Po '\d{1,3}')
    TMP="node_hwmon_temp_celsius{chip=\"$DISK\",sensor=\"temp1\",serial=\"$SERIAL\"} $TEMP\n"
    OUTPUT="$OUTPUT$TMP"
done
echo -e $OUTPUT > $FOLDER/$FILE