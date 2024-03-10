#! /bin/bash

echo "Creating new users"

useradd daisy -c "Daisyvângela Santana" -s /bin/bash -m 
passwd daisy 

useradd fernando -c "Fernando Cesar" -s /bin/bash -m -p $(openssl passwd -crypt Senha1234)
passwd fernando

useradd maria -c "Maria Fernanda" -s /bin/bash -m -p $(openssl passwd -crypt Senha1234)
passwd maria 

echo "Sorted out!!!!"
