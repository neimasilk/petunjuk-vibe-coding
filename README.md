# Panduan Vibe Coding Indonesia V1.2.1

**Penulis Konsep:** Mukhlis Amien (Terinspirasi oleh Nicolas Zullo & Alur Kerja Proyek ModernKataKupas)
**Versi:** 1.2.1 (Revisi untuk klarifikasi minor)
**Tanggal Pembuatan Awal:** 25 Mei 2025
**Tanggal Revisi Terakhir:** 26 Mei 2025
**Tujuan:** Membangun perangkat lunak berkualitas tinggi secara efisien dengan perencanaan terstruktur, kolaborasi manusia-AI yang jelas, dan iterasi cepat.

## Filosofi Inti Vibe Coding

1.  **Manusia sebagai Arsitek Utama:** Anda (pengembang manusia) adalah perencana strategis. AI adalah asisten pelaksana yang sangat kompeten. Jangan serahkan perencanaan fundamental kepada AI.
2.  **Konteks adalah Kunci:** AI membutuhkan pemahaman mendalam tentang proyek. Sediakan semua informasi relevan melalui "Memory Bank" yang terstruktur dan selalu *up-to-date*.
3.  **Iterasi dengan "Baby Steps":** Pecah pekerjaan besar menjadi tugas-tugas kecil, jelas, dan dapat diuji (`baby-step.md`). Ini meminimalkan ambiguitas dan memudahkan AI untuk berhasil.
4.  **Tes Berkelanjutan:** Setiap `baby-step` harus diuji secara menyeluruh sebelum melanjutkan. Kualitas dibangun secara bertahap.
5.  **Dokumentasi Hidup:** Dokumen seperti `status-todolist-saran.md`, `architecture.md`, dan `progress.md` adalah artefak hidup yang terus diperbarui, bukan dibuat sekali lalu dilupakan.

## Alat yang Dibutuhkan (Saran)

1.  **Gemini (atau AI serupa untuk Perencanaan & Analisis):** Digunakan untuk pemahaman konteks proyek, pembuatan dokumen perencanaan awal, review kode, dan pembuatan `status-todolist-saran.md` serta `baby-step.md`.
2.  **Jules (atau AI Coding Assistant Pilihan Anda di IDE):** Digunakan untuk implementasi kode berdasarkan `baby-step.md`.
3.  **Cursor (atau IDE dengan Integrasi AI & Git):** Digunakan sebagai lingkungan pengembangan utama, eksekusi tes, dan manajemen versi dengan Git.
4.  **Git & GitHub (atau Platform Version Control Lainnya):** Untuk manajemen kode sumber dan kolaborasi.

## Tahap Pra-Proyek: Brainstorming & Proposal Awal

Sebelum memulai "Tahap 0" dari Vibe Coding secara formal, penting untuk memiliki gagasan proyek yang cukup matang.
* **Aksi (Anda):** Lakukan brainstorming hingga mendapatkan gambaran komplit dalam sebuah **proposal proyek** minimal yang mencakup Bab 1 (Pendahuluan: Latar Belakang, Rumusan Masalah, Tujuan), Bab 2 (Tinjauan Pustaka/Dasar Teori), dan Bab 3 (Metodologi/Rancangan Proyek). *Catatan: Proposal ini tidak perlu sempurna atau sangat formal, tujuannya adalah memberikan konteks awal yang solid untuk AI di Tahap 0.*

## Tahap 0: Pengaturan Awal Proyek (Persiapan & Setup Dokumen)

**Tujuan:** Membangun fondasi proyek yang kuat dengan dokumen perencanaan yang jelas dan repositori yang siap.

* **Langkah 0.1: Inisiasi Proyek dengan AI & Repositori**
    * **Aksi (Anda ke Gemini):** Setelah proposal proyek siap, berikan prompt berikut untuk memulai penyiapan dokumen proyek. Pastikan untuk *menyertakan konten proposal* dalam interaksi Anda dengan Gemini.
    * **Prompt untuk Gemini:**
        ```
        Saya akan melakukan vibe coding untuk proyek yang dijelaskan dalam proposal berikut: [Salin-tempel konten proposal Anda di sini atau berikan sebagai file terpisah jika platform memungkinkan dan rujuk dengan jelas]. Berdasarkan panduan vibe coding ini, tolong bantu saya menyiapkan struktur dokumen awal yang diperlukan. Ini termasuk membantu membuat draf awal untuk:
        1. Dokumen Desain Produk/Game (PDD/GDD) dalam format Markdown (`dokumen-desain-produk.md`).
        2. Rekomendasi Tumpukan Teknologi (`tumpukan-teknologi.md`).
        3. Rencana Implementasi Awal untuk MVP (`rencana-implementasi.md`).
        Siapkan juga draf untuk file `README.md` yang akan digunakan di repositori GitHub, yang menjelaskan proyek secara singkat dan bagaimana menjalankannya (jika sudah bisa diperkirakan).
        ```
    * **Aksi (Anda):**
        * Buat repositori baru di GitHub (atau platform pilihan Anda).
        * Inisialisasi dengan `README.md` (bisa menggunakan draf dari Gemini dan disempurnakan).

* **Langkah 0.2: Pembuatan Dokumen Perencanaan Inti (Dengan Bantuan Gemini)**
    * **Aksi (Anda & Gemini):**
        1.  **Dokumen Desain Produk/Game (PDD/GDD):**
            * Gunakan draf dari Langkah 0.1. Review dan sempurnakan. Pastikan visi, fitur utama, target pengguna, dan alur pengguna (jika ada) jelas.
            * **Output:** `dokumen-desain-produk.md`
        2.  **Tumpukan Teknologi (Tech Stack):**
            * Gunakan draf dari Langkah 0.1. Diskusikan dengan Gemini, pertimbangkan pro dan kontra, dan finalisasi pilihan teknologi.
            * **Output:** `tumpukan-teknologi.md`
        3.  **Rencana Implementasi Awal (MVP):**
            * Gunakan draf dari Langkah 0.1. Pastikan rencana ini memecah MVP menjadi fitur-fitur atau modul-modul yang lebih kecil dan dapat dikelola. Setiap item harus memiliki kriteria keberhasilan atau cara validasi.
            * **Output:** `rencana-implementasi.md`

* **Langkah 0.3: Siapkan "Memory Bank"**
    * **Aksi (Anda):**
        * Buat folder proyek utama Anda (jika belum ada).
        * Di dalamnya, buat subfolder bernama `memory-bank`.
        * Tambahkan file-file berikut ke `memory-bank/`:
            * Proposal Proyek Anda (misalnya, `proposal-proyek.pdf` atau `.md`)
            * `dokumen-desain-produk.md`
            * `tumpukan-teknologi.md`
            * `rencana-implementasi.md`
            * `status-todolist-saran.md` (Buat file kosong ini. Akan diisi oleh Gemini nanti).
            * `baby-step.md` (Buat file kosong ini. Akan diisi oleh Gemini nanti).
            * `architecture.md` (Buat file kosong ini untuk dokumentasi arsitektur seiring berjalannya proyek).
            * `progress.md` (Buat file kosong ini untuk melacak langkah-langkah implementasi yang sudah selesai).
        * Commit semua file awal ini ke repositori Git Anda dengan pesan commit yang jelas (misalnya, "Initial project setup and planning documents").

* **Langkah 0.4: (Opsional) Aturan untuk AI di Cursor (Cursor Rules)**
    * Jika Anda menggunakan Cursor dan ingin AI di Cursor mengikuti aturan tertentu:
        * Di Cursor, buka chat dan gunakan perintah `/Generate Cursor Rules` dengan memilih file-file `.md` yang sudah dibuat (PDD, Tech Stack, Rencana Implementasi).
        * Review aturan yang dihasilkan. Pastikan menekankan modularitas dan praktik terbaik. Anda mungkin perlu menyesuaikannya secara manual.
        * Tandai aturan krusial (misalnya, selalu membaca `architecture.md` atau PDD sebelum menulis kode) sebagai aturan "Always".

---

## Tahap 1: Setup Environment & Klarifikasi Rencana Implementasi (Fase 0 & 1 Koleksi Prompt)

**Tujuan:** Memastikan lingkungan pengembangan siap dan rencana implementasi awal sudah sangat jelas dan bebas ambiguitas untuk AI sebelum kode pertama ditulis.

* **Langkah 1.1: Setup Environment (Anda & Gemini)**
    * **Prompt untuk Gemini:**
        ```
        Baca semua file di direktori ./memory-bank untuk memahami konteks proyek saya. Saat ini saya berada di fase persiapan setup environment untuk koding. Tolong pandu saya dengan detail berdasarkan dokumen rencana-implementasi.md dan tumpukan-teknologi.md untuk langkah-langkah setup environment yang diperlukan (misalnya, instalasi library spesifik, konfigurasi awal, struktur folder kode yang direkomendasikan).
        ```
    * **Aksi (Anda):** Ikuti panduan dari Gemini untuk menyiapkan lingkungan pengembangan Anda.

* **Langkah 1.2: Memastikan Tidak Ada Ambiguitas dalam Rencana (Anda & Gemini)**
    * **Prompt untuk Gemini (Iterasi Klarifikasi Awal):**
        ```
        Baca kembali semua dokumen di ./memory-bank, terutama rencana-implementasi.md. Apakah rencana tersebut sudah cukup jelas untuk memulai implementasi langkah pertama dari MVP? Ajukan pertanyaan spesifik jika ada bagian yang perlu diklarifikasi 100% untukmu sebelum kita membuat baby-step pertama.
        ```
    * **Aksi (Anda):** Jawab pertanyaan Gemini secara detail. Jika ada klarifikasi, minta Gemini untuk membantu menyarankan pembaruan pada `rencana-implementasi.md` atau dokumen relevan lainnya di `memory-bank`. Simpan perubahan tersebut.
    * **Prompt untuk Gemini (Iterasi Klarifikasi Lanjutan - ulangi jika perlu):**
        ```
        Terima kasih atas klarifikasinya. Saya sudah memperbarui dokumen [sebutkan nama dokumen yang diperbarui] di ./memory-bank. Silakan baca kembali. Apakah sekarang sudah 100% jelas, atau masih ada hal lain yang perlu diperjelas sebelum kita lanjut?
        ```
    * **Aksi (Anda):** Ulangi proses tanya jawab dan pembaruan dokumen ini hingga Gemini mengkonfirmasi bahwa semuanya sudah sangat jelas.
    * **Prompt untuk Gemini (Konfirmasi Final Kesiapan):**
        ```
        Setelah semua klarifikasi ini, dan dengan asumsi semua dokumen di ./memory-bank sudah yang paling update, pikirkan baik-baik: adakah hal krusial yang terlewat atau masih ambigu yang dapat menghambat implementasi baby-step pertama? Jika tidak ada, berarti kita bisa lanjut. Jawab "YA, MASIH ADA" atau "TIDAK, SUDAH SIAP". Jika "YA, MASIH ADA", jelaskan apa itu.
        ```
    * **Aksi (Anda):** Jika Gemini menjawab "YA, MASIH ADA", selesaikan ambiguitas tersebut. Pastikan semua sudah final sebelum melanjutkan ke tahap berikutnya. Commit semua perubahan dokumen ke Git.

---

## Tahap 2: Siklus Pengembangan Iteratif (Baby Steps) (Fase 3 Koleksi Prompt)

**Tujuan:** Mengimplementasikan fitur secara bertahap, memastikan kualitas di setiap langkah. Siklus ini diulang untuk setiap *baby step*.

* **Langkah 2.1: Review Progres & Pembuatan Baby Step (Anda & Gemini)**
    * **Prompt untuk Gemini:**
        ```
        Baca semua file di ./memory-bank untuk memahami konteks proyek saya dan progres terakhir (lihat status-todolist-saran.md dan progress.md untuk histori).
        Saat ini, [jelaskan status terakhir secara singkat, misal: "semua tes untuk baby-step sebelumnya dengan nama '[nama baby step terakhir]' pada commit [sebutkan commit hash terakhir jika relevan] sudah lolos" atau "kita akan memulai implementasi fitur/bagian '[nama fitur dari rencana-implementasi.md]'"].
        Jika sudah ada codebase, tolong review secara umum (atau bagian spesifik yang relevan dengan langkah berikutnya, mungkin merujuk pada file atau direktori tertentu).

        Tugasmu sekarang adalah:
        1.  Buat/Update file status-todolist-saran.md. Isinya harus mencakup:
            * Status proyek saat ini (ringkasan singkat progres terakhir, apa yang baru saja diselesaikan).
            * Daftar pekerjaan (To-Do List) prioritas tinggi untuk masa depan (berdasarkan rencana-implementasi.md dan progres saat ini).
            * Saran "Baby-Step To-Do List" yang sangat spesifik untuk langkah implementasi berikutnya. Ini harus menjadi satu unit pekerjaan kecil yang logis dan dapat diuji.
        2.  Setelah itu, elaborasikan lebih lanjut "Baby-Step To-Do List" tersebut dan buat konten untuk file baby-step.md. File ini harus berisi instruksi yang sangat detail, langkah demi langkah, seolah-olah untuk junior developer. Hilangkan semua ambiguitas. Setiap sub-tugas di baby-step.md harus menyertakan:
            * Deskripsi tugas yang jelas dan tujuannya.
            * File mana saja yang kemungkinan akan dibuat atau dimodifikasi.
            * Kriteria penerimaan atau cara spesifik untuk melakukan tes/validasi keberhasilan tugas tersebut (misalnya, "pytest harus lolos", "output X harus terlihat di UI", "API endpoint Y harus mengembalikan Z").
        ```
    * **Aksi (Anda):**
        * Review `status-todolist-saran.md` dan `baby-step.md` yang dihasilkan Gemini.
        * Pastikan `baby-step.md` benar-benar detail, jelas, tidak ambigu, dan setiap tugasnya bisa diuji. Lakukan revisi bersama Gemini jika perlu hingga Anda yakin 100%.
    * **Output:** `status-todolist-saran.md` (terupdate), `baby-step.md` (baru atau terupdate). Simpan kedua file ini di `memory-bank`.

* **Langkah 2.2: Implementasi Baby Step (Anda & Jules/AI Coding Assistant)**
    * **Prompt untuk Jules (atau AI Coding Assistant lainnya di IDE Anda):**
        ```
        Baca semua dokumen di direktori ./memory-bank untuk mendapatkan konteks penuh. Fokus pekerjaan kamu saat ini adalah pada file baby-step.md. Implementasikan semua tugas yang dijelaskan di baby-step.md secara berurutan dan hati-hati. Pastikan untuk mengikuti kriteria penerimaan dan panduan tes yang disebutkan untuk setiap sub-tugas. Jika ada dependensi antar sub-tugas, kerjakan sesuai urutan.
        ```
    * **Aksi (Anda):**
        * Pandu Jules jika diperlukan, terutama jika ada keputusan desain kecil yang tidak tercakup di `baby-step.md` atau jika AI kesulitan menginterpretasikan instruksi.
        * Setelah Jules (atau AI coding Anda) menyelesaikan implementasi:
            * Jalankan semua tes yang relevan (unit test, integration test, atau tes manual berdasarkan kriteria validasi di `baby-step.md`).
            * Pastikan `pytest` (atau framework tes Anda) lolos semua, atau semua kriteria validasi manual terpenuhi. Debug jika ada masalah, bisa dengan bantuan AI coder atau Anda sendiri.
    * **Output:** Kode yang sudah diimplementasikan dan teruji.

* **Langkah 2.3: Update Progres & Dokumentasi (Anda, bisa dibantu AI untuk drafting)**
    * **Aksi (Anda):**
        * Setelah implementasi `baby-step.md` selesai dan semua tes lolos:
            1.  **Update `progress.md`:** Catat `baby-step` yang baru saja diselesaikan (misalnya, dengan merujuk pada nama file `baby-step.md` atau deskripsi singkatnya), tanggal penyelesaian, dan ringkasan singkat pekerjaan yang dilakukan serta hasil utamanya.
            2.  **Update `architecture.md`:** Jika ada perubahan signifikan pada arsitektur, file baru yang penting, atau modifikasi besar pada file yang ada, dokumentasikan di sini. Jelaskan peran arsitekturalnya dan bagaimana ini mempengaruhi keseluruhan sistem.
            3.  **(Opsional) Minta Jules/AI Coder untuk ringkasan:**
                * **Prompt untuk Jules:** *"Implementasi baby-step.md sudah selesai dan semua tes lolos. Berikan ringkasan singkat tentang file-file yang dibuat/diubah dan fungsionalitas utama yang berhasil diimplementasikan. Ini akan digunakan untuk update status."*
                * Anda akan menggunakan ringkasan ini sebagai salah satu masukan saat berinteraksi dengan Gemini di Langkah 2.1 berikutnya.
    * **Output:** `progress.md` (terupdate), `architecture.md` (terupdate).

* **Langkah 2.4: Manajemen Kode & Sinkronisasi (Anda & Cursor/Git)**
    * **Aksi (Anda di Cursor atau terminal):**
        1.  `git pull` (untuk memastikan Anda bekerja dengan versi terbaru, terutama jika ada kolaborasi).
        2.  Pastikan semua dokumen yang relevan di `memory-bank` (seperti `status-todolist-saran.md` dari Langkah 2.1, serta `progress.md` dan `architecture.md` dari Langkah 2.3) sudah disimpan dan siap di-stage untuk commit bersama dengan perubahan kode.
        3.  `git add .` (atau tambahkan file-file yang berubah secara spesifik, termasuk kode dan dokumen di `memory-bank`).
        4.  `git commit -m "Selesai implementasi baby-step: [Nama atau deskripsi singkat dari baby-step.md]"`
        5.  `git push` untuk mengirim perubahan ke repositori remote.
        6.  Setelah berhasil di-push, hapus file `baby-step.md` dari `memory-bank` (atau arsipkan ke folder lain seperti `memory-bank/completed_baby_steps/`). Ini menandakan bahwa `baby-step` tersebut sudah selesai dan siap untuk siklus berikutnya.
    * **Output:** Kode dan dokumentasi terkait ter-commit dan ter-push ke GitHub. `baby-step.md` bersih/dihapus untuk siklus berikutnya.

* **Langkah 2.5: Ulangi Siklus**
    * Kembali ke Langkah 2.1 untuk membuat `baby-step.md` berikutnya. Ulangi siklus ini hingga semua fitur dalam `rencana-implementasi.md` (untuk MVP) selesai.

---

## Tahap 3: Penambahan Fitur Detail & Perbaikan

**Tujuan:** Setelah fungsionalitas dasar (MVP) selesai, tambahkan fitur-fitur lain dari PDD/GDD, lakukan optimasi, dan perbaiki bug.

* **Untuk setiap fitur mayor baru (di luar MVP awal):**
    1.  **Buat Rencana Implementasi Fitur Spesifik:**
        * **Aksi (Anda & Gemini):** Mirip dengan `rencana-implementasi.md` awal, buat file baru, misalnya `fitur-X-rencana-implementasi.md`. Di dalamnya, definisikan langkah-langkah kecil dan tes untuk fitur tersebut. Tambahkan file ini ke `memory-bank`.
    2.  **Ikuti Siklus Pengembangan Iteratif (Tahap 2):** Gunakan `fitur-X-rencana-implementasi.md` sebagai panduan untuk membuat `baby-step.md` dan lakukan implementasi iteratif seperti di Tahap 2.

* **Perbaikan Bug & Penanganan Masalah:**
    * Jika prompt gagal atau AI menghasilkan kode yang merusak aplikasi: Gunakan fitur "restore" di Cursor atau revert ke commit Git terakhir (`git reset --hard HEAD~1` atau `git revert <commit-hash>`). Sempurnakan prompt Anda atau `baby-step.md`.
    * Untuk error JavaScript/Python/dll.: Buka console browser (untuk JS), lihat traceback error, salin error, dan paste ke Cursor/AI untuk bantuan debug.
    * Jika benar-benar buntu: Pertimbangkan untuk mengekstrak seluruh codebase (misalnya dengan prompt yang meminta AI menganalisis struktur folder dan file utama) dan minta bantuan Gemini dengan konteks penuh untuk mengidentifikasi masalah atau memberikan saran arsitektural.

---

## Tips Tambahan

* **Prompt yang Lebih Baik ke AI Perencana (Gemini):**
    * "Pikirkan selama yang kamu butuhkan untuk melakukan ini dengan benar, saya tidak terburu-buru. Yang penting adalah kamu mengikuti instruksi saya dengan tepat dan menjalankannya dengan sempurna."
    * "Jika ada ambiguitas dalam instruksi saya, selalu ajukan pertanyaan klarifikasi sebelum melanjutkan."
    * "Bertindaklah sebagai arsitek perangkat lunak senior yang membantu saya merencanakan langkah-langkah implementasi."
* **Prompt yang Lebih Baik ke AI Koding (Jules):**
    * "Tulis kode yang bersih, modular, mudah dibaca, dan efisien."
    * "Tambahkan komentar yang menjelaskan logika kompleks jika ada."
    * "Pastikan untuk mengikuti panduan gaya (style guide) proyek jika ada (simpan di `memory-bank/coding_style_guide.md`)."
* **Spesialisasi AI (jika menggunakan berbagai model):**
    * Marketing/Copywriting: GPT-4.x, Claude 3 Opus
    * Desain Grafis/Sprite 2D: ChatGPT-4o, Midjourney, DALL-E 3
    * Musik: Suno AI, AIVA
    * Efek Suara: ElevenLabs (untuk voice), platform SFX berbasis AI lainnya.
* **Untuk Aplikasi (Non-Game):** Alur kerja ini sebagian besar sama. Ganti GDD dengan PRD (Product Requirements Document). Anda bisa menggunakan alat prototyping seperti v0.dev, Figma (dengan plugin AI), atau Kriya untuk membuat prototipe UI/UX terlebih dahulu dan hasilnya bisa menjadi input untuk `dokumen-desain-produk.md`.

---

Panduan ini adalah kerangka kerja yang hidup. Sesuaikan dengan kebutuhan spesifik proyek Anda, alat yang Anda gunakan, dan preferensi pribadi Anda. Kunci utamanya adalah **perencanaan yang matang, komunikasi yang jelas dengan AI, dan iterasi yang terukur.** Selamat mencoba "Vibe Coding" versi Indonesia!
