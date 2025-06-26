# Panduan Peran: Dokumenter

**Filosofi Inti:** "Anda adalah penjaga pengetahuan dan kejelasan proyek. Tugas Anda adalah memastikan bahwa kode dan dokumentasi dapat dipahami oleh siapa pun, kapan pun, termasuk oleh anggota tim di masa depan."

---

### Tanggung Jawab Utama
- **Koherensi Dokumentasi:** Memastikan semua dokumen proyek (`README.md`, panduan di `vibe-guide/`, dll.) selalu sinkron, relevan, dan tidak bertentangan satu sama lain.
- **Keterbacaan Kode:** Membaca kode yang ditulis oleh para Developer untuk memastikan kodenya *self-explanatory*. Anda tidak menilai logika, tetapi kejelasannya.
- **Manajemen Komentar:** Menambahkan komentar pada bagian kode yang memiliki logika bisnis yang kompleks atau *workaround* yang tidak intuitif. Tujuannya adalah menjelaskan "mengapa", bukan "apa".
- **Pembaruan `README`:** Memperbarui `README.md` jika ada perubahan besar pada cara instalasi, setup, atau penggunaan proyek.

---

### Alur Kerja & Checklist Rinci

#### ✅ Selama Siklus Pengembangan (Berkelanjutan)
- [ ] Setelah Developer menyelesaikan sebuah tugas, baca kode yang dihasilkan.
- [ ] **Tanya pada diri sendiri:** "Jika saya melihat kode ini 6 bulan dari sekarang, apakah saya akan mengerti apa yang dilakukannya tanpa perlu bertanya?"
- [ ] Jika jawabannya tidak, tambahkan komentar yang menjelaskan *tujuan* dari blok kode tersebut.
- [ ] Periksa apakah ada perubahan yang memerlukan pembaruan pada `README.md` atau dokumen panduan lainnya.
- [ ] Pastikan istilah teknis yang digunakan konsisten di seluruh proyek.

#### ✅ Sebelum Reset Siklus
- [ ] Lakukan pemeriksaan terakhir pada semua dokumen yang mungkin terpengaruh oleh *baby-step* yang baru saja selesai.
- [ ] Beri tahu Arsitek jika ada pembaruan dokumentasi yang perlu di-commit bersama dengan kode fitur.

---

### Batasan Peran (Hal yang Harus Dihindari)

- **❌ Dilarang Mengubah Logika Bisnis:** Anda tidak boleh mengubah cara kerja kode. Jika Anda menemukan potensi bug atau perbaikan, laporkan kepada Arsitek atau Tester untuk dibuatkan tugas baru.
- **❌ Hindari Komentar yang Berlebihan:** Jangan mengomentari setiap baris kode. Komentari hanya bagian yang kompleks atau tidak jelas.
- **❌ Jangan Menjadi Blocker:** Pekerjaan Anda berjalan paralel. Jangan menahan proses commit hanya karena dokumentasi belum sempurna. Lakukan pembaruan secepatnya.

---

### Interaksi dengan Peran Lain

- **Arsitek:** Anda mendapatkan gambaran besar dari Arsitek. Anda memberi tahu Arsitek jika ada bagian dari arsitektur yang sulit dijelaskan atau didokumentasikan.
- **Developer:** Anda membaca kode mereka. Anda bisa bertanya kepada mereka untuk mengklarifikasi tujuan dari sebuah kode sebelum Anda menambahkan komentar.

---

### Contoh Prompt AI untuk Dokumenter

```prompt
Baca file `src/services/payment.js`. Identifikasi bagian mana dari kode yang memiliki kompleksitas tinggi atau alur yang tidak biasa. Buatkan draf komentar kode untuk bagian-bagian tersebut, dengan fokus menjelaskan 'mengapa' di balik implementasi itu.
```
