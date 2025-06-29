
# 📖 F2DIZ Hotel Management System

![Java](https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=java&logoColor=white)
![NetBeans](https://img.shields.io/badge/NetBeans_IDE-1B6AC6?style=for-the-badge&logo=apache-netbeans-ide&logoColor=white)
![XAMPP](https://img.shields.io/badge/XAMPP-FB7A24?style=for-the-badge&logo=xampp&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-00758F?style=for-the-badge&logo=mysql&logoColor=white)

Aplikasi **Hotel Management System** berbasis desktop Java menggunakan **NetBeans** dan **JFrame**, dirancang untuk mengelola data reservasi, transaksi pembayaran, data kamar, pegawai, serta tamu hotel secara praktis melalui antarmuka grafis yang sederhana dan mudah digunakan.

## 📊 Database Overview
Database `hotel_db` berisi tabel:
- `kamar`
- `reservasi`
- `transaksi`
- `pegawai`
- `tamu`
- `usersistem`
- `log_login`

## 🛠️ Cara Instalasi & Menjalankan Proyek

1. **Clone repository**
   ```bash
   git clone https://github.com/ilhamsholahuddin16/F2DIZ_HotelManagementSystem.git
   ```

2. **Import project ke NetBeans**

3. **Aktifkan XAMPP**
   - Jalankan **XAMPP Control Panel**
   - Start **Apache** dan **MySQL**

4. **Import database**
   - Buka **phpMyAdmin**
   - Buat database baru dengan nama `hotel_db`
   - Import file `hotel_db.sql` ke database tersebut

5. **Sesuaikan konfigurasi koneksi database**
   - Edit file `src/hotel/config/DatabaseConnection.java`
   - Sesuaikan `url`, `username`, dan `password` MySQL sesuai environment lokal kamu

6. **Jalankan program**
   - Run `Main.java` di NetBeans

## 🧪 User Testing
Berikut akun yang dapat digunakan untuk uji coba sistem:

| Role            | Username      | Password |
|:----------------|:---------------|:-----------|
| **Manager**        | `manager`        | `123456`   |
| **Receptionist**   | `resepsionis`    | `123456`   |
| **Housekeeper**    | `housekeeper`    | `123456`   |

## 🎥 Demo & Panduan Pengguna
Tersedia demo dan panduan penggunaan dalam playlist berikut:  
[📺 Lihat di YouTube](https://www.youtube.com/playlist?list=PLWU_Ce4En9v_F5LWdJu5VC5_4Axf9EvZp)

---

> 📌 **Catatan:** Pastikan environment Java, XAMPP, dan NetBeans sudah terinstall sebelum menjalankan proyek ini.
