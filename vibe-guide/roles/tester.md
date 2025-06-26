# Panduan Peran: Tester

**Filosofi Inti:** "Anda adalah gerbang kualitas. Tidak ada kode yang bisa masuk ke *main branch* tanpa persetujuan Anda. Tugas Anda adalah memastikan setiap fitur bekerja sesuai yang diharapkan dan tidak merusak fungsionalitas yang sudah ada."

---

### Tanggung Jawab Utama
- **Validasi Fungsional:** Memastikan setiap tugas yang dikerjakan oleh Developer memenuhi "Kriteria Tes" yang didefinisikan di `papan-proyek.md`.
- **Pengembangan Skrip Tes:** Menulis dan memelihara skrip pengujian otomatis (unit test, integration test) untuk memvalidasi fungsionalitas secara efisien.
- **Pelaporan Bug:** Jika ditemukan bug, Anda bertanggung jawab untuk membuat laporan yang jelas dan reproduktif, lalu berkoordinasi dengan Arsitek untuk menjadikannya tugas baru di siklus berikutnya.
- **Pengujian Regresi:** Memastikan bahwa fitur baru tidak merusak fitur lama yang sudah ada.

---

### Alur Kerja & Checklist Rinci

#### ✅ Setelah Developer Menyelesaikan Tugas
- [ ] Baca "Kriteria Tes" di `papan-proyek.md` untuk tugas yang relevan.
- [ ] Lakukan pengujian manual terlebih dahulu untuk memvalidasi fungsionalitas inti.
- [ ] Tulis atau perbarui skrip pengujian otomatis untuk mencakup kasus penggunaan utama dan *edge case* dari fitur tersebut.
- [ ] Jalankan semua pengujian (termasuk pengujian regresi).

#### ✅ Jika Tes Berhasil
- [ ] Beri tanda centang (✅) pada tugas di `papan-proyek.md`.
- [ ] Beri tahu Arsitek bahwa fitur siap untuk di-review.

#### ✅ Jika Tes Gagal
- [ ] Dokumentasikan bug dengan jelas: langkah-langkah untuk mereproduksi, hasil yang diharapkan, dan hasil aktual.
- [ ] Laporkan kepada Arsitek.
- **Penting:** Jangan langsung meminta Developer untuk memperbaiki. Bug harus dijadwalkan sebagai tugas baru oleh Arsitek untuk menjaga alur kerja tetap terstruktur.

---

### Batasan Peran (Hal yang Harus Dihindari)

- **❌ Hindari Menulis Kode Fitur:** Fokus Anda adalah menulis kode untuk menguji, bukan kode untuk fungsionalitas produk.
- **❌ Jangan Mengasumsikan Kriteria Tes:** Jika kriteria tes di `papan-proyek.md` tidak jelas, tanyakan kepada Arsitek sebelum memulai pengujian.
- **❌ Jangan Melewatkan Pengujian Regresi:** Selalu jalankan seluruh rangkaian tes, bukan hanya tes untuk fitur baru.

---

### Interaksi dengan Peran Lain

- **Arsitek:** Anda menerima "Kriteria Tes" dari Arsitek. Anda melaporkan hasil tes dan bug kembali kepada Arsitek.
- **Developer:** Anda menguji kode yang mereka tulis. Anda tidak berinteraksi langsung untuk perbaikan bug; semua melalui Arsitek.

---

### Contoh Prompt AI untuk Tester

```prompt
Baca file `src/controllers/authController.js` dan `papan-proyek.md` untuk tugas T3. Buatkan kerangka (scaffold) pengujian unit menggunakan framework Jest untuk fungsi `loginUser`. Pastikan untuk mencakup skenario sukses, skenario password salah, dan skenario email tidak ditemukan, sesuai dengan kriteria tes.
```
