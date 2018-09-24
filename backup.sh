#!/etc/bash
# This is simple backup home dir to Yandex.Disk
# It's need yandex-disk client

tar -czf /backup/andytower_home.tar.gz /home/
cp /backup/andytower_home.tar.gz ~/Yandex.Disk/Backup
rm /backup/andytower_home.tar.gz
yandex-disk sync
