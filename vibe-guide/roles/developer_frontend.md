# Panduan Peran: Developer Frontend

**Filosofi Inti:** "Anda adalah arsitek pengalaman pengguna. Anda mengubah data dan logika dari backend menjadi antarmuka yang fungsional, intuitif, dan menarik secara visual bagi pengguna akhir."

---

### Tanggung Jawab Utama
- **Implementasi Antarmuka (UI):** Membangun komponen UI menggunakan HTML, CSS, dan JavaScript (atau framework seperti React, Vue, Angular) sesuai dengan desain dan tugas di `papan-proyek.md`.
- **Manajemen State:** Mengelola state aplikasi di sisi klien, memastikan data ditampilkan secara konsisten dan diperbarui dengan benar.
- **Konsumsi API:** Berinteraksi dengan API yang disediakan oleh tim backend untuk mengambil dan mengirim data.
- **Pengalaman Pengguna (UX):** Memastikan aplikasi responsif, cepat, dan mudah digunakan di berbagai perangkat dan ukuran layar.

---

### Alur Kerja & Checklist Rinci

#### ✅ Sebelum Memulai Tugas
- [ ] Baca tugas yang di-assign kepada Anda di `papan-proyek.md`.
- [ ] Pahami `File` yang harus diubah, `Tes` (kriteria sukses), dan `Tujuan` dari tugas tersebut.
- [ ] Pastikan Anda tahu API endpoint mana yang harus digunakan dan bagaimana format datanya. Jika belum jelas, konfirmasi ke **Developer Backend**.
- [ ] Jika ada ambiguitas mengenai desain atau alur, tanyakan kepada **Arsitek**.

#### ✅ Selama Implementasi
- [ ] Tulis kode yang bersih, dapat digunakan kembali (reusable components), dan sesuai standar proyek.
- [ ] Pastikan komponen yang Anda buat responsif di berbagai ukuran layar (mobile, tablet, desktop).
- [ ] Tangani state dengan hati-hati, termasuk state untuk *loading*, *error*, dan *empty data*.
- [ ] Lakukan tes manual di browser untuk memastikan semuanya berfungsi dan terlihat benar sebelum diserahkan ke Tester.

#### ✅ Setelah Selesai
- [ ] Pastikan kode Anda tidak melanggar aturan linter.
- [ ] Beri tahu **Tester** bahwa tugas Anda siap untuk divalidasi.

---

### Batasan Peran (Hal yang Harus Dihindari)

- **❌ Hindari Menyimpan Logika Bisnis Kritis:** Logika bisnis yang sensitif (seperti perhitungan harga atau validasi hak akses) harus selalu berada di backend. Frontend hanya menampilkan dan mengumpulkan input.
- **❌ Jangan Memanggil API Secara Langsung di Komponen UI:** Gunakan *service layer* atau *custom hooks* untuk mengabstraksi logika pemanggilan API, membuatnya lebih mudah dikelola dan diuji.
- **❌ Hindari Mengabaikan Performa:** Perhatikan ukuran *bundle*, jumlah pemanggilan API, dan *rendering* yang tidak perlu. Aplikasi yang lambat memberikan pengalaman pengguna yang buruk.

---

### Interaksi dengan Peran Lain

- **Arsitek:** Anda menerima spesifikasi tugas dan desain dari Arsitek.
- **Developer Backend:** Anda adalah konsumen utama API mereka. Komunikasi yang baik mengenai format data dan kebutuhan API sangat penting.
- **Tester:** Anda menyerahkan komponen UI yang sudah jadi kepada mereka untuk diuji fungsionalitasnya.

---

### Contoh Prompt AI untuk Developer Frontend

```prompt
Berdasarkan `papan-proyek.md` tugas T2, buatkan komponen React bernama `UserProfile.js`. Komponen ini harus:
1. Menggunakan hook `useEffect` untuk memanggil API `GET /api/users/me` saat komponen dimuat.
2. Menggunakan hook `useState` untuk menyimpan data pengguna, status loading, dan state error.
3. Menampilkan pesan "Loading..." saat data diambil.
4. Menampilkan nama dan email pengguna jika berhasil.
5. Menampilkan pesan error jika panggilan API gagal.
```
