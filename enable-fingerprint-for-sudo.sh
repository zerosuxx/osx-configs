#!/usr/bin/env bash

if grep -q "pam_tid.so" /etc/pam.d/sudo
then
    echo 'fingerprint already configured'
    exit 1
fi

sed -i '' '2s/^/auth\t   sufficient\t  pam_tid.so\n/' /etc/pam.d/sudo
