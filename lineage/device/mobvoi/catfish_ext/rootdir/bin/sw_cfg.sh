#!/system/bin/sh

tag="sw_cfg"

setBankId() {
    /vendor/bin/log -p v -t $tag  "check bank id"
    nfc_bank="/persist/nfc_bank.bin"
    if [ ! -e $nfc_bank ]; then
        /vendor/bin/log -p v -t $tag  "$nfc_bank does not exist"
        return 1
    fi
    bankId=$(/vendor/bin/cat $nfc_bank)
    /vendor/bin/setprop ro.bankidno $bankId
}

/vendor/bin/log -p v -t $tag  "start sw config"
setBankId

