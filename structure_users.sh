#! /bin/bash

echo "Criando diretórios..."

mkdir /publico /adm /ven /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários e adicionando-os aos grupos..."

useradd carlos -c "Carlos ADM" -s /bin/bash -m -p $(openssl passwd -6 123) -G GRP_ADM
passwd -e carlos

useradd maria -c "Maria ADM" -s /bin/bash -m -p $(openssl passwd -6 123) -G GRP_ADM
passwd -e maria

useradd joao -c "Joao ADM" -s /bin/bash -m -p $(openssl passwd -6 123) -G GRP_ADM
passwd -e joao

useradd debora -c "Débora VENDAS" -s /bin/bash -m -p $(openssl passwd -6 123) -G GRP_VEN
passwd -e debora

useradd sebastiana -c "Sebastiana VENDAS" -s /bin/bash -m -p $(openssl passwd -6 123) -G GRP_VEN
passwd -e sebastiana

useradd roberto -c "Roberto VENDAS" -s /bin/bash -m -p $(openssl passwd -6 123) -G GRP_VEN
passwd -e roberto

useradd josefina -c "Josefina SECRETARIADO" -s /bin/bash -m -p $(openssl passwd -6 123) -G GRP_SEC
passwd -e josefina

useradd amanda -c "Amanda SECRETARIADO" -s /bin/bash -m -p $(openssl passwd -6 123) -G GRP_SEC
passwd -e amanda

useradd rogerio -c "Rogério SECRETARIADO" -s /bin/bash -m -p $(openssl passwd -6 123) -G GRP_SEC
passwd -e rogerio

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Fim script..."
