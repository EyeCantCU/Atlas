sed -i 's@enabled=1@enabled=0@g' /etc/yum.repos.d/rpmfusion-nonfree{,-updates}.repo
sed -i 's@enabled=1@enabled=0@g' /etc/yum.repos.d/rpmfusion-free{,-updates}.repo
