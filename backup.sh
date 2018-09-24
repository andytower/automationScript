#!/bin/bash
# This is simple backup home dir to Yandex.Disk
# It's need yandex-disk client
rsync -azRv --exclude /home/andytower/Downloads/ --exclude /home/andytower/Yandex.Disk/ --exclude /home/andytower/Загрузки/ /home/andytower/ /backup/ > /backup/backup.log
cd /backup
tar -czf /backup/andytower_home.tar.gz home/
cp /backup/andytower_home.tar.gz ~/Yandex.Disk/Backup
rm /backup/andytower_home.tar.gz
yandex-disk sync
