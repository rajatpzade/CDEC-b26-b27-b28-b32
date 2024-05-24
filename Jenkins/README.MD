# Prerequesists for installation

```
yum install epel-release unzip vim -y 
```
```
yum install wget -y
```

```
wget https://download.bell-sw.com/java/11.0.4/bellsoft-jdk11.0.4-linux-amd64.rpm
yum install  java -y
rpm -ivh bellsoft-jdk11.0.4-linux-amd64.rpm
```

# Mysql Configuration
```
rpm -ivh http://repo.mysql.com/mysql57-community-release-el7.rpm 
```
```
yum install mysql-server -y
```

#  rpm  --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2022

echo 'vm.max_map_count=262144' >/etc/sysctl.conf
sysctl -p
echo '* - nofile 80000' >>/etc/security/limits.conf
sed -i -e '/query_cache_size/ d' -e '$ a query_cache_size = 15M' /etc/my.cnf
systemctl start mysqld
grep 'password' /var/log/mysqld.log
mysql_secure_installation
mysql -p -u root
create database sonarqube;
create user 'sonarqube'@'localhost' identified by 'Redhat@123';
grant all privileges on sonarqube.* to 'sonarqube'@'localhost';
flush privileges;

#Installation of sonarqube
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-7.9.1.zip
unzip sonarqube-7.9.1.zip
mv sonarqube-7.9.1 /opt/sonarqube
cd /opt/
mv sonarqube sonar
sed -i -e '/^sonar.jdbc.username/ d' -e '/^sonar.jdbc.password/ d' -e '/^sonar.jdbc.url/ d' -e '/^sonar.web.host/ d' -e '/^sonar.web.port/ d' /opt/sonar/conf/sonar.properties
sed -i -e '/#sonar.jdbc.username/ a sonar.jdbc.username=sonarqube' -e '/#sonar.jdbc.password/ a sonar.jdbc.password=Redhat@123' -e '/InnoDB/ a sonar.jdbc.url=jdbc.mysql://localhost:3306/sonarqube?useUnicode=true&characterEncoding=utf&rewriteBatchedStatements=true&useConfigs=maxPerformance' -e '/#sonar.web.host/ a sonar.web.host=0.0.0.0' /opt/sonar/conf/sonar.properties
useradd sonar
chown sonar:sonar /opt/sonar/ -R
sed -i -e '/^#RUN_AS_USER/ c RUN_AS_USER=sonar' /opt/sonar/bin/linux-x86-64/sonar.sh
vim /opt/sonar/bin/linux-x86-64/sonar.sh
vim /opt/sonar/conf/wrapper.conf
alternatives --config java
vim /opt/sonar/conf/wrapper.conf

#to start sonarqube
/opt/sonar/bin/linux-x86-64/sonar.sh start

#to show status
/opt/sonar/bin/linux-x86-64/sonar.sh status

#to get logs
less logs/sonar.logls