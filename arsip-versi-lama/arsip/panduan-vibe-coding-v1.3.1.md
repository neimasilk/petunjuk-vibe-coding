# **Panduan Vibe Coding Indonesia V1.3.1 (Edisi Ramah Pemula)**

**Selamat datang di Vibe Coding!** Panduan ini dirancang untuk membantumu, seorang programmer pemula, membangun perangkat lunak berkualitas secara efisien. Inti dari metode ini adalah menjadikan **kamu (manusia) sebagai arsitek atau perencana utama**, sementara **AI (seperti Gemini) bertindak sebagai asisten pelaksana yang sangat kompeten**. Kunci keberhasilannya adalah komunikasi yang jelas, perencanaan terstruktur, dan iterasi dalam langkah-langkah kecil.

## Filosofi Inti

1.  **Manusia sebagai Arsitek Utama:** Anda adalah perencana strategis. AI adalah asisten pelaksana.
2.  **Konteks adalah Kunci:** AI membutuhkan pemahaman mendalam tentang proyek melalui "Memory Bank" yang terstruktur.
3.  **Iterasi dengan "Baby Steps":** Pecah pekerjaan besar menjadi tugas-tugas kecil yang jelas dan dapat diuji.
4.  **Tes Berkelanjutan:** Setiap langkah kecil harus diuji secara menyeluruh sebelum melanjutkan.
5.  **Dokumentasi Hidup:** Dokumen perencanaan adalah artefak hidup yang terus diperbarui.

## Alur Dokumen Terpadu

Semua dokumen penting disimpan dalam satu folder agar AI mudah mengaksesnya.

```
memory-bank/
├── proposal-proyek.md
├── spesifikasi-produk.md       # Menggantikan 3 dokumen lama
├── papan-proyek.md             # Pusat kendali untuk status dan tugas
├── architecture.md
├── progress.md
└── arsip-baby-steps/           # Folder untuk menyimpan riwayat tugas
```

-----

## Tahap 0: Pengaturan Proyek

### Langkah 0.0: Siapkan Konteks untuk AI (Langkah Paling Awal)

Sebelum memulai, AI butuh pemahaman mendalam tentang proyekmu. Siapkan **proposal proyek super singkat** yang berisi:

  * **Bab 1:** Latar belakang dan tujuan proyekmu.
  * **Bab 2:** Teknologi atau teori dasar yang mungkin dipakai.
  * **Bab 3:** Gambaran kasar rancangan proyekmu.

*Tujuan proposal ini bukan untuk kesempurnaan, tapi untuk memberikan konteks yang solid kepada AI di langkah berikutnya.*

### Langkah 0.1: Spesifikasi Produk Terpadu

Setelah proposal siap, minta AI untuk membuat dokumen spesifikasi utama.

**Prompt untuk Gemini:**

```prompt
Saya akan melakukan vibe coding. Berdasarkan proposal proyek yang saya siapkan, tolong bantu saya membuat draf untuk file `spesifikasi-produk.md`. Isinya harus mencakup:
1. Visi & Fitur Utama (buat dalam maksimal 1 halaman)
2. Rekomendasi Tumpukan Teknologi (Tech Stack) beserta alasan singkatnya.
3. Rencana Implementasi Awal untuk MVP dalam bentuk poin-poin aksi.

Berikut adalah poin utama dari proposal saya: [Salin-tempel poin-poin utama proposal Anda di sini]
```

### Langkah 0.2: Siapkan "Memory Bank"

Buat semua file yang dibutuhkan. File `papan-proyek.md` adalah yang terpenting untuk pekerjaan harian.

**File wajib dibuat:**

  * `spesifikasi-produk.md` (diisi dengan hasil dari Langkah 0.1)
  * `architecture.md` (biarkan kosong)
  * `progress.md` (biarkan kosong)
  * `papan-proyek.md` (salin template di bawah ini)

**Template untuk `papan-proyek.md` (Sangat Penting):**

Salin-tempel template ini ke dalam file `papan-proyek.md` Anda. Template ini sudah dilengkapi petunjuk untuk memandu Anda.

```markdown
### STATUS [Update: <Isi tanggal hari ini>]
- *Jelaskan status terakhir proyek secara singkat. Contoh: "Inisialisasi proyek selesai."*

### BABY-STEP BERJALAN: <Tulis nama fitur kecil yang sedang dikerjakan, cth: "Setup Halaman Utama">
* **Tujuan:** *Jelaskan secara singkat apa hasil akhir dari baby-step ini. Contoh: "Membuat file HTML dasar yang bisa dibuka di browser."*
* **Tugas:**
    - [ ] **Tugas 1:** *Deskripsikan tugas pertama yang sangat kecil*. | **File:** *Sebutkan file yang akan dibuat/diubah*. | **Tes:** *Jelaskan cara memvalidasi sukses, cth: 'pytest lolos', 'output X muncul', 'API Y mengembalikan Z'.*
    - [ ] **Tugas 2:** *Deskripsikan tugas kedua*. | **File:** *nama_file.js* | **Tes:** *Fungsi A mengembalikan nilai true.*
    - [ ] ... (tambahkan tugas lain jika perlu)

### SARAN & PRIORITAS
- *Bagian ini akan diisi oleh Gemini. Minta saran untuk langkah selanjutnya atau peringatan risiko.*
```

<details>
<summary><strong>Klik di sini untuk melihat Contoh Pengisian untuk Proyek "Halaman Biodata"</strong></summary>

**Contoh `spesifikasi-produk.md`:**

```markdown
### 1. Visi & Fitur Utama
Membuat satu halaman web statis untuk menampilkan biodata pribadi. Fitur utama adalah menampilkan Nama, Foto, dan Deskripsi Singkat.

### 2. Tech Stack
-   **HTML5:** Untuk struktur konten. Alasan: Standar web universal.
-   **CSS3:** Untuk styling dasar. Alasan: Mudah dipelajari untuk tata letak sederhana.

### 3. Rencana MVP
1.  Buat file HTML dasar dengan struktur yang benar.
2.  Tambahkan elemen untuk nama, foto, dan deskripsi di dalam file HTML.
3.  Buat file CSS terpisah dan terapkan styling sederhana untuk layout (misal: tengahkan konten).
```

**Contoh `papan-proyek.md` (untuk baby-step pertama):**

```markdown
### STATUS [Update: 16-06-2025]
- Inisialisasi proyek dan pembuatan `spesifikasi-produk.md` selesai.

### BABY-STEP BERJALAN: "Struktur Dasar Halaman HTML"
* **Tujuan:** Membuat file HTML yang valid dan siap untuk diisi konten.
* **Tugas:**
    - [ ] **Tugas 1:** Buat file `index.html` di folder root. | **File:** `index.html` | **Tes:** File berhasil dibuat dan bisa dibuka di browser.
    - [ ] **Tugas 2:** Isi `index.html` dengan struktur dasar HTML5 (doctype, html, head, body). | **File:** `index.html` | **Tes:** Kode struktur HTML valid tanpa error jika diperiksa di validator online.
```

</details>

-----

## Tahap 1: Validasi Rencana

Sebelum menulis satu baris kode pun, pastikan rencananya masuk akal. Ini adalah peran Anda sebagai arsitek.

**Checklist Validasi Teknis oleh Anda (Manusia):**

  - [ ] Apakah pilihan teknologi (`Tech Stack`) di `spesifikasi-produk.md` sudah tepat untuk proyek ini?
  - [ ] Apakah ada bagian dari `Rencana MVP` yang terasa terlalu rumit atau tidak jelas?
  - [ ] Pikirkan 1-2 masalah yang mungkin terjadi di masa depan dengan rencana ini.

Gunakan prompt berikut jika Anda ragu:

```prompt
Berdasarkan `spesifikasi-produk.md` yang telah dibuat, tolong identifikasi:
1. Satu potensi masalah atau "edge case" di fitur [sebutkan nama fitur].
2. Apa dampak jika saya mengubah [sebutkan teknologi] menjadi [sebutkan teknologi lain]?
```

-----

## Tahap 2: Siklus Pengembangan Iteratif

Ini adalah siklus yang akan Anda ulangi terus-menerus.

### Langkah 2.1: Buat/Update `papan-proyek.md`

Minta Gemini untuk merencanakan langkah kecil berikutnya.

**Prompt untuk Gemini:**

```prompt
Baca semua file di `memory-bank/` untuk memahami konteks dan progres terakhir (lihat `progress.md` dan `arsip-baby-steps/`).

Tugasmu sekarang adalah memperbarui file `papan-proyek.md`.
1.  **Status:** Tulis ringkasan singkat progres terakhir.
2.  **Baby-Step:** Buat daftar tugas yang sangat kecil, terukur, dan logis untuk langkah berikutnya. Pastikan setiap tugas memiliki kriteria tes yang jelas.
3.  **Saran:** Berikan saran untuk prioritas berikutnya atau peringatan jika ada risiko.
```

### Langkah 2.2: Implementasi & Tes oleh AI Coding

Minta asisten AI di dalam IDE Anda (seperti Co-pilot, Jules, dll.) untuk mengerjakan tugas.

**Prompt untuk AI Coding di IDE:**

```prompt
Baca `papan-proyek.md`. Implementasikan semua tugas yang ada di bagian "BABY-STEP BERJALAN" secara berurutan. Ikuti kriteria tes untuk setiap tugas.
```

Setelah AI selesai, **Anda wajib melakukan tes** sesuai kriteria yang ada di papan proyek.

### Langkah 2.3: Arsipkan & Update Progres

Jika semua tes berhasil:

1.  **Arsipkan `papan-proyek.md`:**
      * Ubah nama file `papan-proyek.md` menjadi `baby-step-[fitur]-[tanggal].md`. Contoh: `baby-step-login-20250616.md`.
      * Pindahkan file tersebut ke dalam folder `memory-bank/arsip-baby-steps/`.
2.  **Buat kembali `papan-proyek.md` yang kosong** menggunakan template di atas, siap untuk siklus berikutnya.
3.  **Update `progress.md`:** Catat apa yang baru saja Anda selesaikan.
4.  **(Jika Perlu) Update `architecture.md`:** Jika ada file baru yang penting atau perubahan besar, catat di sini.

### Langkah 2.4: Commit ke Git

Simpan pekerjaan Anda dengan pesan yang jelas.

⚠️ **PENTING untuk Pemula:** Jangan lupa menggunakan tanda petik (") untuk membungkus pesan commit!

**Format yang Benar:**
```bash
git commit -m "Pesan commit Anda di sini"
```

**Contoh Pesan Commit:**

```bash
git commit -m "Feat: Implementasi struktur dasar halaman utama"
```

**Pesan commit yang lebih detail:**
```bash
git commit -m "Feat: Implementasi struktur dasar halaman utama

- Selesai baby-step yang diarsip di: baby-step-halaman-utama-20250616.md
- Dampak utama pada file: index.html"
```

**Ulangi Siklus:** Kembali ke Langkah 2.1 untuk memulai fitur kecil berikutnya.

-----

## Tips Tambahan untuk Pemula

### 🎯 **Mulai dari yang Sederhana**
- Jangan langsung membuat aplikasi kompleks
- Pilih proyek pertama yang bisa diselesaikan dalam 1-2 minggu
- Contoh proyek pemula: halaman biodata, kalkulator sederhana, to-do list

### 🤖 **Berkomunikasi Efektif dengan AI**
- Selalu berikan konteks yang jelas
- Gunakan bahasa yang spesifik, hindari kata-kata ambigu
- Jika hasil AI tidak sesuai, perbaiki prompt Anda

### 🧪 **Pentingnya Testing**
- Setiap baby-step harus bisa diuji
- Tes sederhana: "Apakah halaman bisa dibuka?", "Apakah tombol berfungsi?"
- Jangan lanjut ke step berikutnya jika tes gagal

### 📝 **Dokumentasi yang Baik**
- Tulis dengan bahasa yang mudah dipahami
- Catat masalah yang ditemui dan solusinya
- Update dokumentasi setiap kali ada perubahan penting

### 🔄 **Iterasi adalah Kunci**
- Tidak apa-apa jika hasil pertama tidak sempurna
- Perbaiki sedikit demi sedikit
- Setiap iterasi membuat Anda lebih paham

-----

## Troubleshooting Umum

### ❌ **"AI tidak memahami konteks proyek saya"**
**Solusi:** Pastikan file `proposal-proyek.md` dan `spesifikasi-produk.md` sudah lengkap dan jelas.

### ❌ **"Baby-step terlalu besar dan membingungkan"**
**Solusi:** Pecah lagi menjadi tugas yang lebih kecil. Satu baby-step idealnya bisa diselesaikan dalam 30-60 menit.

### ❌ **"Tidak tahu teknologi mana yang harus dipilih"**
**Solusi:** Untuk pemula, pilih teknologi yang paling populer dan mudah dipelajari. Contoh: HTML/CSS/JavaScript untuk web, Python untuk backend.

### ❌ **"Tes gagal terus"**
**Solusi:** Periksa kembali kriteria tes. Mungkin terlalu rumit atau tidak jelas. Simplifikasi kriteria tes.

### ❌ **"Git commit error: pathspec did not match any file"**
**Solusi:** Anda lupa menggunakan tanda petik (") untuk pesan commit. Gunakan format: `git commit -m "pesan Anda"`

-----

**Selamat coding! 🚀**

*Ingat: Vibe Coding bukan tentang kesempurnaan, tapi tentang progres yang konsisten dan terukur.*