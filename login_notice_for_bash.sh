#!/bin/bash
#==================================================
# OS Passed:    CentOS6
# Description:  bash��¼ʱ�Զ����͵�¼����
# Author:       kuretru < kuretru@gmail.com >
# Github:       https://github.com/kuretru/Script-Collection
# Version:      1.0.170501
#==================================================

#Server��������Կ
key=''

user=$(whoami)
hostname=$(hostname | sed 's/\./_/g')
ip=$(grep 'Accepted' /var/log/secure | grep ${user} | tail -n 1 |  sed -nr 's/.*[^0-9](([0-9]+\.){3}[0-9]+).*/\1/p')

wget -q --spider http://sc.ftqq.com/${key}.send?text="${hostname}��¼����"\&desp="IP��ַ${ip}���û���${user}" &