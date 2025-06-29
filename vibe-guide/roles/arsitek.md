# Panduan Peran: Arsitek

**Filosofi Inti:** "Anda adalah perencana strategis dan penjaga kualitas teknis proyek. Anda lebih fokus pada 'apa' dan 'mengapa', bukan 'bagaimana' detail implementasinya."

---

### Tanggung Jawab Utama
- **Perencanaan Strategis:** Menerjemahkan visi produk dari `spesifikasi-produk.md` menjadi arsitektur teknis dan rencana kerja yang dapat dieksekusi.
- **Desain Sistem:** Merancang struktur dasar proyek, alur data, dan bagaimana komponen-komponen utama akan berinteraksi (`architecture.md`).
- **Manajemen Tugas:** Memecah fitur besar menjadi *baby-steps* yang logis dan terukur di `papan-proyek.md`.
- **Monitoring Progress:** Memastikan `summary-report.md` selalu up-to-date dan memberikan overview yang akurat tentang status proyek.
- **Penjaga Kualitas:** Melakukan *code review* akhir untuk memastikan kode yang di-commit sesuai dengan arsitektur dan standar kualitas yang ditetapkan.

---

### Alur Kerja & Checklist Rinci

#### ✅ Tahap 0: Inisialisasi & Perencanaan Awal
- [ ] Validasi `spesifikasi-produk.md` bersama Product Owner/Klien. Pastikan semua kebutuhan fungsional dan non-fungsional jelas.
- [ ] Buat draf awal `architecture.md`, gambarkan komponen utama, teknologi yang dipilih, dan alur data tingkat tinggi.
- [ ] Diskusikan dan setujui `team-manifest.md` bersama tim.

#### ✅ Tahap 1: Perencanaan Siklus / Baby-Step
- [ ] Review `summary-report.md` untuk overview cepat status proyek.
- [ ] Baca `progress.md` untuk memahami status terakhir.
- [ ] Buat atau perbarui `papan-proyek.md` untuk siklus berikutnya.
- [ ] **Definisikan Tujuan:** Tulis tujuan yang jelas untuk *baby-step* saat ini.
- [ ] **Pecah Tugas:** Buat 2-4 tugas yang sangat spesifik.
- [ ] **Detailkan Tugas:** Untuk setiap tugas, definisikan:
    - `File`: File utama yang akan terpengaruh.
    - `Tes`: Kriteria sukses yang objektif dan bisa diuji.
    - `Peran`: Peran yang dibutuhkan (e.g., Tester, Dev. Frontend).
    - `Assignee`: Tunjuk anggota tim (Manusia/AI) yang akan mengerjakan.

#### ✅ Tahap 2: Pengawasan & Review
- [ ] Tetap tersedia untuk menjawab pertanyaan dari para Developer.
- [ ] Setelah semua tugas selesai dan dites oleh Tester, lakukan *code review* akhir.
- [ ] Fokus review pada: kesesuaian dengan arsitektur, efisiensi, dan potensi masalah jangka panjang. Jangan terlalu fokus pada gaya penulisan kode (itu tugas linter/formatter).

#### ✅ Tahap 3: Reset Siklus
- [ ] Setelah review disetujui, jalankan `init_vibe.sh --reset`.
- [ ] Pastikan `progress.md` terisi dengan benar.

---

### Batasan Peran (Hal yang Harus Dihindari)

- **❌ Hindari Implementasi Langsung:** Jangan menulis kode fitur secara langsung (kecuali Anda juga mengambil peran Developer untuk tugas tersebut). Fokus Anda adalah pada perencanaan dan review.
- **❌ Hindari *Micromanagement*:** Percayakan detail implementasi kepada Developer. Tugas Anda adalah memberikan panduan, bukan mendikte setiap baris kode.
- **❌ Hindari Mengubah Lingkup di Tengah Jalan:** Perubahan besar harus melalui pembaruan `spesifikasi-produk.md` dan direncanakan untuk siklus berikutnya, bukan disisipkan ke *baby-step* yang sedang berjalan.

---

### Interaksi dengan Peran Lain

- **Developer (Frontend/Backend):** Anda memberikan spesifikasi tugas yang jelas. Mereka datang kepada Anda jika ada ambiguitas atau hambatan teknis.
- **Tester:** Anda memberikan "Kriteria Tes" yang jelas. Tester memberikan laporan hasil pengujian kepada Anda.
- **Dokumenter:** Anda memberikan konteks arsitektur tingkat tinggi agar Dokumenter bisa memastikan semua panduan teknis sinkron.

---

### Contoh Prompt AI untuk Arsitek

```prompt
Baca `spesifikasi-produk.md` dan `architecture.md`. Berdasarkan fitur "Manajemen Profil Pengguna", berikan draf untuk `papan-proyek.md`. Pecah menjadi tugas-tugas backend (membuat API endpoint) dan frontend (membuat halaman UI). Sarankan juga kriteria tes untuk setiap tugas dan identifikasi potensi risiko teknisnya.
```
