function wreboot --description "Reboot into Windows"
    sudo efibootmgr --bootnext 0004
    or return

    systemctl reboot
end
