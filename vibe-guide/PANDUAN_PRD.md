# **Panduan PRD (Product Requirements Document) untuk Vibe Coders** 📝

Hai para Vibe Coders! Saya perhatikan banyak dari kita yang kadang kesulitan dalam mendefinisikan produk dan menghadapi *scope creep* (lingkup kerja yang membengkak). Mari kita perbaiki dengan panduan sederhana ini untuk menciptakan Dokumen Kebutuhan Produk (PRD) yang efektif untuk aplikasi *full stack* kita.

> **Penting:** Panduan ini berfokus pada **perencanaan kebutuhan produk**. Ini adalah langkah awal yang krusial sebelum Anda mulai memecah pekerjaan ke dalam `papan-proyek.md`.

## **Langkah 1: Ciptakan Dokumen `spesifikasi-produk.md` Anda** 📋

Gunakan panduan ini untuk membuat atau menyempurnakan file `memory-bank/spesifikasi-produk.md`. Dokumen ini akan menjadi peta jalan dan "otak" dari proyek Anda, yang akan terus menjadi rujukan bagi seluruh tim (baik manusia maupun AI).

Saya sudah menyertakan template lengkap di akhir panduan ini. Anda bisa langsung menyalinnya atau meminta rekan setim AI Anda untuk mengisinya berdasarkan ide proyek Anda.

## **Langkah 2: Dokumentasikan Setiap Komponen Produk Anda** ⚙️

Untuk setiap komponen (alur pengguna, fitur, antarmuka, dll.), dokumentasikan:
* **Fungsi Utama**: (Contoh: otentikasi, visualisasi data, perpesanan, dll.)
* **User Stories & Kriteria Penerimaan**: Apa yang diinginkan pengguna dan bagaimana kita tahu itu selesai.
* **Batasan & Ketergantungan Teknis**: Hal-hal yang perlu diperhatikan.
* **Tingkat Prioritas**: (Wajib Ada, Sebaiknya Ada, Bagus Jika Ada).

**Contoh:** *"Otentikasi Pengguna: Opsi login via email/password dan media sosial, alur reset password, verifikasi akun via email. Prioritas: TINGGI."*

## **Langkah 3: Tambahkan Metrik Kesuksesan Produk** 📊

Dokumentasikan metrik kunci kesuksesan ini untuk mengukur keberhasilan produk:
* **Key Performance Indicators (KPIs)**: Indikator Kinerja Utama.
* **Target Akuisisi & Retensi Pengguna**: Berapa banyak pengguna yang ingin kita dapatkan dan pertahankan.
* **Tujuan Konversi & Metrik Funnel**: Ukuran keberhasilan alur tertentu (misal: pendaftaran).
* **Tolok Ukur Keterlibatan Pengguna**: Seberapa aktif pengguna menggunakan produk.

## **Langkah 4: Berdialog Mendalam dengan Rekan Setim AI** 🤖

Ini adalah inti dari Vibe Coding. Jangan hanya meminta AI memberikan masukan, tapi lakukan percakapan mendalam dengan model AI tercanggih yang tersedia.

* Mulai dialog dengan model seperti ChatGPT 4.5, Claude 3.7 Sonnet (dalam *thinking mode*), atau Grok3 (dalam *thinking mode*).
* Jika AI memiliki kemampuan pencarian web, jalankan PRD Anda dalam mode berpikir dan juga mode pencarian web untuk mendapatkan wawasan pasar.
* Lakukan tanya jawab berulang kali untuk menyempurnakan setiap detail.
* Dorong percakapan hingga Anda merasa benar-benar yakin dengan alur aplikasi Anda.
* Minta AI untuk bermain peran (*roleplay*) sebagai berbagai tipe pengguna yang berinteraksi dengan produk Anda.
* Minta AI untuk menantang asumsi dan mempertanyakan prioritas Anda.
* Minta AI untuk menyarankan analisis kompetitor berdasarkan tren pasar saat ini.
* Lanjutkan percakapan sampai semua *edge case* dan pertanyaan terjawab.

**Tips Pro:** Strukturkan percakapan Anda untuk mencakup aspek yang berbeda secara mendalam:
1.  **Putaran pertama:** Fokus pada konsep keseluruhan dan kebutuhan pengguna.
2.  **Putaran kedua:** Gali lebih dalam tentang fitur spesifik dan prioritasnya.
3.  **Putaran ketiga:** Tantang kelayakan teknis dan estimasi waktu.
4.  **Putaran keempat:** Jelajahi *edge case* dan kondisi error.
5.  **Putaran terakhir:** Tinjau kembali seluruh PRD yang telah direvisi.

Ingat: **ANDA** yang membuat keputusan produk akhir, tetapi AI adalah rekan berpikir yang sangat berharga!

## **Prinsip PRD yang Perlu Diingat** 🔑

* PRD yang baik berfokus pada **APA** yang perlu dibuat, bukan **BAGAIMANA** cara membuatnya.
* Setiap kebutuhan harus spesifik, terukur, dan dapat diuji.
* Setiap fitur harus bisa dilacak kembali ke kebutuhan nyata pengguna.
* Prioritas yang jelas membantu mencegah *scope creep*.
* PRD adalah dokumen hidup yang berevolusi seiring Anda belajar lebih banyak.

---

## **Template untuk file `memory-bank/spesifikasi-produk.md` Anda**

Saya telah membuat template markdown komprehensif yang bisa Anda gunakan sebagai titik awal. Salin ini ke dalam file `memory-bank/spesifikasi-produk.md` Anda dan isi detail proyek Anda.

```markdown
# Dokumen Kebutuhan Produk (PRD): [Nama Produk Anda]

## 1. Tinjauan Produk

**Visi Produk:** [Jelaskan visi produk dalam 1-2 kalimat singkat]

**Target Pengguna:** [Jelaskan siapa pengguna utama dan sekunder]

**Tujuan Bisnis:** [Sebutkan tujuan bisnis utama yang ingin dicapai produk ini]

**Metrik Kesuksesan:** [Bagaimana kesuksesan akan diukur, contoh: jumlah pengguna aktif, tingkat retensi, dll.]

## 2. Persona Pengguna

### Persona 1: [Nama Persona, cth: "Andi, Mahasiswa Produktif"]
- **Demografi:** [Usia, pekerjaan, tingkat kemahiran teknis]
- **Tujuan:** [Apa yang ingin mereka capai dengan produk Anda]
- **Masalah (Pain Points):** [Tantangan yang mereka hadapi saat ini]
- **Perjalanan Pengguna:** [Bagaimana mereka akan berinteraksi dengan produk Anda]

### Persona 2: [Nama Persona]
- **Demografi:** [...]
- **Tujuan:** [...]
- **Masalah (Pain Points):** [...]
- **Perjalanan Pengguna:** [...]

## 3. Kebutuhan Fitur

| Fitur | Deskripsi | User Stories | Prioritas | Kriteria Penerimaan | Ketergantungan |
|---|---|---|---|---|---|
| **[Fitur 1]** | [Deskripsi singkat fitur] | [Sebagai pengguna, saya ingin...] | [Wajib/Sebaiknya/Bagus] | [Daftar kriteria kapan fitur dianggap selesai] | [Ketergantungan pada fitur lain] |
| **[Fitur 2]** | [Deskripsi singkat fitur] | [Sebagai pengguna, saya ingin...] | [Wajib/Sebaiknya/Bagus] | [Daftar kriteria] | [Ketergantungan] |
| **[Fitur 3]** | [Deskripsi singkat fitur] | [Sebagai pengguna, saya ingin...] | [Wajib/Sebaiknya/Bagus] | [Daftar kriteria] | [Ketergantungan] |

## 4. Alur Pengguna (User Flows)

### Alur 1: [Nama Alur, cth: Pendaftaran Pengguna]
1.  [Langkah 1]
2.  [Langkah 2]
3.  [Langkah 3]
    - [Alur alternatif]
    - [Kondisi error]

### Alur 2: [Nama Alur]
1.  [Langkah 1]
2.  [Langkah 2]
3.  [Langkah 3]
    - [Alur alternatif]
    - [Kondisi error]

## 5. Kebutuhan Non-Fungsional

### Performa
- **Waktu Muat:** [Target waktu muat halaman]
- **Pengguna Bersamaan:** [Jumlah pengguna yang diharapkan dapat ditangani secara bersamaan]
- **Waktu Respons:** [Target waktu respons dari server/aksi]

### Keamanan
- **Otentikasi:** [Persyaratan, cth: Wajib menggunakan Oauth 2.0]
- **Otorisasi:** [Tingkat izin pengguna, cth: Admin, User, Guest]
- **Perlindungan Data:** [Persyaratan, cth: Enkripsi data sensitif]

### Kompatibilitas
- **Perangkat:** [Perangkat yang didukung, cth: Desktop, Mobile]
- **Browser:** [Browser yang didukung dan versinya, cth: Chrome, Firefox versi terbaru]
- **Ukuran Layar:** [Dimensi yang didukung untuk desain responsif]

### Aksesibilitas
- **Tingkat Kepatuhan:** [cth: WCAG 2.1 AA]
- **Kebutuhan Spesifik:** [Fitur aksesibilitas kunci, cth: Dukungan screen reader]

## 6. Spesifikasi Teknis (Gambaran Umum)

### Frontend
- **Tumpukan Teknologi (Tech Stack):** [Framework, library, cth: React, Vue]
- **Sistem Desain:** [Sistem desain yang digunakan, cth: Material UI, TailwindCSS]

### Backend
- **Tumpukan Teknologi (Tech Stack):** [Bahasa, framework, cth: Node.js, Python/Django]
- **Kebutuhan API:** [cth: RESTful, GraphQL]
- **Database:** [Jenis dan struktur database, cth: PostgreSQL, MongoDB]

### Infrastruktur
- **Hosting:** [Solusi hosting, cth: Vercel, AWS]
- **Skalabilitas:** [Kebutuhan skalabilitas]
- **CI/CD:** [Proses deployment]

## 7. Rencana Rilis

### MVP (v1.0)
- **Fitur:** [Daftar fitur untuk rilis pertama]
- **Target Waktu:** [Perkiraan tanggal rilis]
- **Kriteria Sukses MVP:** [Bagaimana mengukur keberhasilan MVP]

### Rilis Berikutnya
- **v1.1:** [Rencana fitur dan perkiraan waktu]
- **v2.0:** [Rencana fitur dan perkiraan waktu]

## 8. Pertanyaan Terbuka & Asumsi

- **Pertanyaan 1:** [Pertanyaan yang masih perlu dicari jawabannya]
- **Asumsi 1:** [Asumsi yang dibuat selama perencanaan]

## 9. Lampiran

### Wawasan dari Percakapan dengan AI
- **Percakapan 1:** [Tanggal, Model AI yang digunakan, wawasan utama yang didapat]
- **Edge Case dari AI:** [Daftar skenario tak terduga yang diidentifikasi oleh AI]
- **Saran Perbaikan dari AI:** [Perbaikan besar yang disarankan oleh AI]

### Glosarium
- **Istilah 1:** [Definisi]
- **Istilah 2:** [Definisi]
```