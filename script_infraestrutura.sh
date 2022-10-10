#!/bin/bash

echo "Gerando pastas..."

mkdir /publico

echo "Diretório '/publico' foi criado!"

mkdir /adm

echo "Diretório '/adm' foi criado!"

mkdir /ven

echo "Diretório '/ven' foi criado!"

mkdir /sec

echo "Diretório '/sec' foi criado!"

echo "Gerando grupos..."

groupadd GRP_ADM

echo "Grupo 'GRP_ADM' gerado!"

groupadd GRP_VEN

echo "Grupo 'GRP_VEN' gerado!"

groupadd GRP_SEC

echo "Grupo 'GRP_SEC' gerado!"

echo "Especificando propriétarios das pastas..."

chown root:GRP_ADM /adm

echo "Proprietários 'root':'GRP_ADM' definidos para a pasta '/adm'"

chown root:GRP_VEN /ven

echo "Proprietários 'root':'GRP_VEN' definidos para a pasta '/ven'"

chown root:GRP_SEC /sec

echo "Proprietários 'root':'GRP_SEC' definidos para a pasta '/sec'" 

echo "Criando usuários..."

useradd carlos -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -5 1234)

echo "Usuário 'carlos' criado e adicionado ao grupo 'GRP_ADM'!"

useradd maria -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -5 1234)

echo "Usuário 'maria' criado e adicionado ao grupo 'GRP_ADM'!"

useradd joao -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -5 1234)

echo "Usuário 'joao' criado e adicionado ao grupo 'GRP_ADM'!"

useradd debora -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -5 1234)

echo "Usuário 'debora' criado e adicionado ao grupo 'GRP_VEN'!"

useradd sebastiana -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -5 1234)

echo "Usuário 'sebastiana' criado e adicionado ao grupo 'GRP_VEN'!"

useradd roberto -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -5 1234)

echo "Usuário 'roberto' criado e adicionado ao grupo 'GRP_VEN'!"

useradd josefina -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -5 1234)

echo "Usuário 'josefina' criado e adicionado ao grupo 'GRP_SEC'!"

useradd amanda -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -5 1234)

echo "Usuário 'amanda' criado e adicionado ao grupo 'GRP_SEC'!"

useradd rogerio -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -5 1234)

echo "Usuário 'rogerio' criado e adicionado ao grupo 'GRP_SEC'!"

echo "Definindo permissões..."

chmod 777 /publico

echo "Permissão definida ao diretório '/publico'!"

chmod 770 /adm

echo "Permissão definida ao diretório '/adm'!"

chmod 770 /ven

echo "Permissão definida ao diretório '/ven'!"

chmod 770 /sec

echo "Permissão definida ao diretório '/sec'!"
 
echo "Execução do script finalizada!!!"
