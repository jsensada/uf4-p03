#!/bin/bash
for usuari in $(ls usuaris); do
    user=$(basename "$usuari" .md)
    echo "Generant una contrasenya per "${user}":"
    mkdir -p passwords
    echo "Dummy" > passwords/${user}.passwords
done
echo "Això només és per tu " $(whoami) > secret.txt