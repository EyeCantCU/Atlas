sed -i 's@enabled=0@enabled=1@g' /etc/yum.repos.d/rpmfusion-nonfree{,-updates}.repo
sed -i 's@enabled=0@enabled=1@g' /etc/yum.repos.d/rpmfusion-free{,-updates}.repo
