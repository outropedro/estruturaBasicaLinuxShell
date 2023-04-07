echo "Criado pastas ..."

mkdir /publico

mkdir /adm

mkdir /ven

mkdir /sec

echo "Criando grupos de usuarios"

groupadd GRP_ADM

groupadd GRP_VEN

groupadd GRP_SEC

echo "Criando usuarios"

useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
passwd carlos -e

useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
passwd maria -e

useradd joao -c "Joao" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
passwd joao -e

useradd debora -c "Debora" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
passwd debora -e

useradd sebastian -c "Sebastian" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
passwd carlos -e

useradd roberto -c "Roberto" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
passwd roberto -e

useradd josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
passwd josefina -e

useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
passwd amanda -e

useradd rogerio -c "Rogerio" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
passwd rogerio -e

echo "Alterando grupo dos usuarios"

usermod -G GRP_ADM carlos

usermod -G GRP_ADM maria

usermod -G GRP_ADM joao

usermod -G GRP_VEN debora

usermod -G GRP_VEN roberto

usermod -G GRP_VEN sebastina

usermod -G GRP_SEC josefina

usermod -G GRP_SEC amanda

usermod -G GRP_SEC rogerio

echo "Alterando dono e grupos dos diretorios"

chown root:GRP_ADM /adm

chown root:GRP_VEN /ven

chown root:GRP_SEC /sec

chown root:GRP_ADM /publico

chown root:GRP_VEN /publico

chown root:GRP_SEC /publico

echo "Alterando permissões dos diretórios"

chmod 777 /publico

chmod 770 /adm

chmod 770 /ven

chmod 770 /sec
