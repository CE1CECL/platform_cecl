#!/vendor/bin/sh

if [ ! -d /data/vendor/radio ]; then
     mkdir /data/vendor/radio
     chmod 0770 /data/vendor/radio
     chown radio.radio /data/vendor/radio
fi

echo 0 > /data/vendor/radio/copy_complete
chown radio.radio /data/vendor/radio/copy_complete
chmod 0770 /data/vendor/radio/copy_complete


if [ -d /data/vendor/radio/modem_config ]; then
     rm -rf /data/vendor/radio/modem_config
fi

mkdir /data/vendor/radio/modem_config

#copy mbn_ota and mbn files
cp -rf /vendor/etc/data/mbn_ota.txt /data/vendor/radio/modem_config
cp -rf /firmware/image/modem_pr/mcfg/configs/mcfg_sw/ /data/vendor/radio/modem_config

chown -hR radio.radio /data/vendor/radio/modem_config
chmod -R 0770 /data/vendor/radio/modem_config

cp -r /vendor/radio/qcril_database/qcril.db /data/vendor/radio/qcril_prebuilt.db
chown radio.radio /data/vendor/radio/qcril_prebuilt.db
chmod 0660 /data/vendor/radio/qcril_prebuilt.db

echo 1 > /data/vendor/radio/copy_complete

#enable modem SSR feature
echo "related" > /sys/bus/msm_subsys/devices/subsys2/restart_level
