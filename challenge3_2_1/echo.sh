#!/bin/bash

# "setVariable" nomli funksiya e'lon qilinmoqda
setVariable() {
    # Bu funksiya bitta argumentni qabul qiladi
    # Argumentni "firstName" nomli o‘zgaruvchiga tayinlaydi
    # O‘zgaruvchi nomi va argumentni ekranga chiqaradi
    # Masalan: agar argument "marge" bo‘lsa, chiqish "firstName=marge" ko‘rinishida bo‘ladi
   echo test
}

# Quyidagi qator "setVariable" funksiyasini "marge" argumenti bilan chaqiradi
setVariable "marge"

