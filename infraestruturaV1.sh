#!/bin/bash

echo "Creating folders..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Creating groups..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Creating users..."

echo "GRP_ADM users ..."

useradd carlos -m -c "Carlos Sant'Anna" -s /bin/bash -p $(openssl passwd -1 c123) -G GRP_ADM
useradd maria -m -c "Maria Santander" -s /bin/bash -p $(openssl passwd -1 m123) -G GRP_ADM
useradd joao -m -c "João Sousa" -s /bin/bash -p $(openssl passwd -1 j123) -G GRP_ADM

echo "GRP_VEN users..."

useradd debora -m -c "Débora Magalhães" -s /bin/bash -p $(openssl passwd -1 d456) -G GRP_VEN
useradd sebastiana -m -c "Sebastiana Aroucha" -s /bin/bash -p $(openssl passwd -1 s456) -G GRP_VEN
useradd roberto -m -c "Roberto Uchoa" -s /bin/bash -p $(openssl passwd -1 r456) -G GRP_VEN

echo "GRP_SEC users..."

useradd josefina -m -c "Josefina Cavendish" -s /bin/bash -p $(openssl passwd -1 j789) -G GRP_SEC
useradd amanda -m -c "Amanda Silva" -s /bin/bash -p $(openssl passwd -1 a789) -G GRP_SEC
useradd rogerio -m -c "Rogério Delgado" -s /bin/bash -p $(openssl passwd -1 r789) -G GRP_SEC

echo "Pointing out owners and groups of folders..."

chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

echo "Setting folders' permissions..."

chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/
chmod 777 /publico/

echo "Sorted out......" 
 
