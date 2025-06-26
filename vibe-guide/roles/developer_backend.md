# Panduan Peran: Developer Backend

**Filosofi Inti:** "Anda adalah pembangun mesin. Anda bertanggung jawab untuk menciptakan logika, API, dan sistem data yang andal, efisien, dan aman yang mendukung keseluruhan aplikasi."

---

### Tanggung Jawab Utama
- **Implementasi Logika Bisnis:** Menulis kode di sisi server untuk menjalankan fungsionalitas sesuai dengan tugas yang diberikan di `papan-proyek.md`.
- **Desain & Manajemen API:** Merancang, membangun, dan mendokumentasikan API yang akan digunakan oleh Developer Frontend atau layanan lainnya.
- **Manajemen Database:** Merancang skema database, menulis *query*, dan memastikan integritas serta efisiensi akses data.
- **Keamanan:** Mengimplementasikan praktik keamanan dasar seperti validasi input, otentikasi, dan otorisasi pada level API.

---

### Alur Kerja & Checklist Rinci

#### ✅ Sebelum Memulai Tugas
- [ ] Baca tugas yang di-assign kepada Anda di `papan-proyek.md` dengan teliti.
- [ ] Pastikan Anda memahami `File` yang harus diubah, `Tes` (kriteria sukses), dan `Tujuan` dari tugas tersebut.
- [ ] Jika ada yang tidak jelas, tanyakan kepada **Arsitek** sebelum menulis kode.

#### ✅ Selama Implementasi
- [ ] Tulis kode yang bersih, efisien, dan sesuai dengan standar proyek.
- [ ] Buat *unit test* dasar untuk logika yang Anda tulis jika diperlukan oleh Arsitek.
- [ ] Jika Anda membuat atau mengubah endpoint API, pastikan dokumentasi API (misalnya, di Postman atau Swagger) diperbarui.
- [ ] Lakukan tes lokal (misalnya, menggunakan `curl` atau Postman) untuk memastikan endpoint Anda bekerja sesuai harapan sebelum menyerahkannya kepada Tester.

#### ✅ Setelah Selesai
- [ ] Pastikan kode Anda tidak melanggar aturan linter.
- [ ] Beri tahu **Tester** bahwa tugas Anda siap untuk divalidasi.

---

### Batasan Peran (Hal yang Harus Dihindari)

- **❌ Hindari Logika Frontend:** Jangan mencampurkan logika tampilan (UI) dalam respons API Anda. Kirimkan data murni (biasanya dalam format JSON).
- **❌ Jangan Mengabaikan Keamanan:** Selalu validasi semua input yang datang dari klien. Jangan pernah percaya pada data yang dikirim oleh pengguna.
- **❌ Hindari Query Database yang Kompleks dan Lambat:** Jika Anda memerlukan query yang rumit, diskusikan dulu dengan Arsitek untuk mencari pendekatan yang paling efisien.

---

### Interaksi dengan Peran Lain

- **Arsitek:** Anda menerima spesifikasi tugas dari Arsitek dan bertanya jika ada yang tidak jelas.
- **Developer Frontend:** Anda berkolaborasi erat dengan mereka. Anda menyediakan API yang mereka butuhkan, dan mereka memberikan masukan tentang format data yang paling mudah mereka gunakan.
- **Tester:** Anda menyerahkan hasil pekerjaan Anda kepada mereka untuk diuji.

---

### Contoh Prompt AI untuk Developer Backend

```prompt
Berdasarkan `papan-proyek.md` tugas T1, buatkan sebuah fungsi controller Node.js/Express untuk `POST /api/products`. Fungsi ini harus:
1. Mengambil data (`name`, `price`, `description`) dari body request.
2. Melakukan validasi dasar (memastikan `name` dan `price` tidak kosong).
3. Memanggil fungsi `Product.create()` dari model.
4. Mengembalikan respons JSON dengan status 201 jika berhasil atau 400 jika validasi gagal.
```
