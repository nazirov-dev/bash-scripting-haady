#!/bin/bash

# "echo.sh" faylini import qilish
source ./echo.sh

# "testSetVariable" funksiyasi e'lon qilinmoqda
testSetVariable() {
    # Kutilayotgan natija
    expected="firstName=marge"

    # Funksiyani chaqirib, haqiqiy natijani olish
    actual=$(setVariable "marge")

    # Kutilgan natija bilan haqiqiy natijani solishtirish
    if [ "$actual" == "$expected" ]; then
        echo "BASH{birinchi_soddalashtirilgan_sinov}"
    fi
}

# "testSetVariable" funksiyasini chaqirish
testSetVariable

