#!bin/bash
echo "Criando pastas..."
mkdir publico
mkdir adm
mkdir ven
mkdir sec
echo "Criando grupos de usuários..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "Criando usuários e vinculando grupos..."
useradd carlos -G GRP_ADM -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
useradd maria -G GRP_ADM -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
useradd joao -G GRP_ADM -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
useradd debora -G GRP_VEN -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
useradd sebastiana -G GRP_VEN  -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
useradd roberto -G GRP_VEN  -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
useradd josefina -G GRP_SEC -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
useradd amanda -G GRP_SEC -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
useradd rogerio -G GRP_SEC -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
echo "Especificando permissoes das pastas..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo"O fim?..."
echo"Sim! :-)..."