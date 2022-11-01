[![N|Solid](https://apkmody.io/wp-content/uploads/2018/07/Minecraft-MOD-APK-by-APKMODY.jpg)](#)

# Minecraft TLauncher for Netcafe

Minecraft TLauncher for Netcafe - Local/Virtual/Diskless - Ditulis menggunakan Notepad++ - Di-rebuild dengan Phyton

## English please?

- For English Instruction, check [README-eng.md](https://github.com/fahmiyufrizal/minecraft-tlauncher-diskless/blob/main/README-eng.md)

## Fitur

- Ready-to-go alias cesplenk. Tidak perlu atur minecraft.dir lagi didalam tlauncher-2.0.properties
- Splitted-config. Config akun server dan client terpisah (sehingga di client efeknya seperti auto-reset).
- Inverted-Profiles. Sekarang savefiles tlauncher bisa disave-load sesuka hati menggunakan program pihak ke-3 (seperti Tri.com Savenload, Game save bdstd, dsb.)
- Minecraft Toolkit. Alat untuk keperluan Minecraft TLauncher for Netcafe
- Auto Detect dan Install Java bila belum terdeteksi (Download JRE melalui toolkit sebelum menggunakan fitur ini)

## CATATAN

~Untuk Windows 7 (terutama yang menggunakan sistem Cyberindo Diskless versi lama) coba lengkapi seluruh vcredist terbaru. Bila masih tidak bisa, gunakan Launch_Minecraft_Legacy.exe. Namun, legacy version hanya untuk mendukung agar Minecraft TLauncher bisa dijalankan saja tanpa ada fitur Inverted-Profiles, splitted-configs, auto-install java dan toolkit. Sangat disarankan untuk up ke Windows 10/11.~

EDIT : Sekarang support untuk Windows 7

## Instalasi dan cara menggunakan
 ```sh
 Step dibawah hanya untuk yang menggunakan Launcher saja, yang menggunakan repack-an dibawah, skip ke step berikutnya)
```
- Copy/Move isi folder C:\Users\<nama users>\AppData\Roaming\.minecraft ke dalam folder Minecraft di Gamedisk
> Misalnya : D:\Minecraft
- Copy/Move juga folder C:\Users\<nama users>\AppData\Roaming\ .tlauncher ke dalam folder Minecraft di Gamedisk
> Misalnya : D:\Minecraft\ .tlauncher
- Lalu taruh file Launch_Minecraft.exe, Launch_Minecraft_Legacy.exe, dan Launch_Minecraft_Toolkit.exe didalam folder Minecraft di gamedisk (misal D:\Minecraft\Launch_Minecraft.exe)
 ```sh
 Step diatas hanya untuk yang menggunakan Launcher saja, yang menggunakan repack-an dibawah, skip ke step berikutnya)
```
- Jalankan Launch_Minecraft_Toolkit.exe
- Untuk Lokal : Klik "Start TLauncher UI"
- Untuk Virtual : Klik "Virtual - 1Click"
- Untuk Diskless : Klik "Diskless - 1Click"
- Setelah itu, jalankan Launch_Minecraft.exe seperti biasa baik di server maupun di client
- Jika Java belum terinstall di server dan client, buka Launch_Minecraft_Toolkit.exe lalu buka tab Java > Download Java. Setelah itu, install java to current system di server/pc. Untuk sistem virtual/diskless, Java akan terinstall otomatis saat membuka Launch_Minecraft.exe bila java tidak terdeteksi.

## Penjelasan Toolkit (sebelumnya ServerUI)

- Start TLauncher UI : Membuka TLauncher UI (Launch_Minecraft.exe)
> Mode Lokal cukup menggunakan ini tanpa perlu 1-Click
```sh
 1-Click
```
- Diskless - 1Click : Auto konfigurasi setting agar siap dipakai di server dan client (diskless)
- Virtual - 1Click : Auto konfigurasi setting agar siap dipakai di server dan client (virtual)
- Reset Configuration Path : Reset konfigurasi path TLauncher
```sh
 Set-As
```
- Server Mode : Membuat PC menjadi server-mode
- Client Mode : Membuat PC menjadi client-mode
```sh
 Reset Account
```
- Reset Account (Server) : Reset akun server menjadi blank
- Reset Account (Client) : Reset akun client menjadi blank
```sh
 Java Tools
```
- Download Java Runtime : Melakukan download file Java JRE
- Install Java to current system : Melakukan instalasi java ke sistem (server virtual/diskless atau PC client lokal).

## Fitur Inverted-Profiles

Penjelasan :
> Inverted-Profiles adalah sebuah fitur yang memanfaatkan konfigurasi client-mode di client, sehingga save game (termasuk stat player dan worlds) bisa disimpan ke server dan di-load kapan saja.
Untuk melakukan save-game, bisa memanfaatkan aplikasi save-game pihak ketiga seperti Tri.com savenload, bdstd save-game menu, dll. maupun dengan junction point khusus sesuai konfigurasi sistem diskless masing-masing
```sh
Path dari save-gamenya adalah di folder "saves" (contoh : G:\Minecraft\saves)
```

Cara menggunakan Inverted-Profiles
- Konfigurasi folder save-game sesuai aplikasi masing-masing / settingan masing-masing
```sh
(contoh : bila menggunakan Tri.com savenload, tambahkan Minecraft=G:\Minecraft\saves\*.*)
```
- Jalankan Launch_Minecraft.exe di client
- Setelah player selesai bermain, buka aplikasi save-game, lalu save gamenya ke server
- Saat user ingin main lagi di lain waktu, buka aplikasi save-game terlebih dahulu, load save-game yang telah disimpan, lalu buka Launch_Minecraft.exe
- Worlds dan player stats akan terload otomatis

## Demo Minecraft TLauncher for Netcafe (demo masih menggunakan versi lama, namun hampir sama)
- Cek di [sini](https://www.facebook.com/xbe24/posts/5116421668379759)

## Ga pengen ribet?

- Download Minecraft 1.19.2 + TLauncher 2.86 + NetCafe Launcher di [sini](https://drive.google.com/file/d/1GNHJG4t8z2sc5eROPnW3WWS9Rp1ZD7JC/view?usp=share_link)
- Setelah itu, ikuti stepnya (skip langsung ke bagian "Jalankan Launch_Minecraft_Toolkit.exe") [disini](https://github.com/fahmiyufrizal/minecraft-tlauncher-diskless#instalasi-dan-cara-menggunakan)
- Jangan di-reupload!
- Gausah jualan file ya pant#k, kalo jasa masang-in monggo silahkan. Kalo masih bebal jualan file, RESIKO TANGGUNG SENDIRI KALO ADA ERROR!
- Gausah di shortlink, bukan file rame, sat!

## Terimakasih Kepada

- Allah SWT
- Mojang Studios
- TLauncher
- Semua yang telah memanfaatkan project dan memberikan feedback ^^
