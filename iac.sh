#!/bin/bash

echo 'CRIANDO DIRETORIOS'

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo 'DIRETORIOS CRIADOS COM SUCESSO!!!'


echo 'CRIANDO GRUPOS'

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo 'GRUPOS CRIADOS COM SUCESSO!!!'


echo 'CRIANDO USUARIOS GRUPO ADM'

useradd carlos -c 'USER_ADM' -m -s /bin/bash -p $(openssl passwd
Xperia123) -G GRP_ADM

useradd maria -c 'USER_ADM' -m -s /bin/bash -p $(openssl passwd
Xperia123) -G GRP_ADM

useradd joao -c 'USER_ADM' -m -s /bin/bash -p $(openssl passwd
Xperia123) -G GRP_ADM

echo 'GRUPOS ADM CRIADOS COM SUCESSO!!!'


echo 'CRIANDO USUARIOS GRUPO VEN'

useradd debora -c 'USER_VEN' -m -s /bin/bash -p $(openssl passwd
Xperia123) -G GRP_VEN

useradd sebastiana -c 'USER_VEN' -m -s /bin/bash -p $(openssl passwd
Xperia123) -G GRP_VEN

useradd roberto -c 'USER_VEN' -m -s /bin/bash -p $(openssl passwd
Xperia123) -G GRP_VEN

echo 'GRUPOS VEN CRIADOS COM SUCESSO!!!'


echo 'CRIANDO USUARIOS GRUPO SEC'

useradd josefina -c 'USER_SEC' -m -s /bin/bash -p $(openssl passwd
Xperia123) -G GRP_SEC

useradd amanda -c 'USER_SEC' -m -s /bin/bash -p $(openssl passwd
Xperia123) -G GRP_SEC

useradd rogerio -c 'USER_SEC' -m -s /bin/bash -p $(openssl passwd
Xperia123) -G GRP_SEC

echo 'GRUPOS SEC CRIADOS COM SUCESSO!!!'

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publica

echo 'CRIACAO DE SCRIPT FINALIZADA....'






