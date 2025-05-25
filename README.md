# Panduan Vibe Coding Indonesia V1.0

**Penulis Konsep:** Mukhlis Amien (Terinspirasi oleh Nicolas Zullo & Alur Kerja Proyek ModernKataKupas)
**Tanggal Pembuatan:** 25 Mei 2025
**Tujuan:** Membangun perangkat lunak berkualitas tinggi secara efisien dengan perencanaan terstruktur, kolaborasi manusia-AI yang jelas, dan iterasi cepat.

## Pendahuluan

"Vibe Coding" adalah metodologi pengembangan perangkat lunak yang menekankan perencanaan matang di awal, pembagian tugas yang jelas antara pengembang manusia dan asisten AI, serta iterasi berkelanjutan berdasarkan *baby steps* yang terdefinisi dengan baik. Panduan ini mengadaptasi konsep tersebut untuk alur kerja spesifik dengan alat-alat seperti Gemini, Jules (atau AI coding lainnya), dan Cursor, serta memperkenalkan dokumen kunci untuk menjaga proyek tetap terarah.

## Alat yang Dibutuhkan (Saran)

1.  **Gemini (atau AI serupa untuk Perencanaan & Analisis):** Digunakan untuk pemahaman konteks proyek, pembuatan dokumen perencanaan awal, review kode, dan pembuatan `status-todolist-saran.md` serta `baby-step.md`.
2.  **Jules (atau AI Coding Assistant Pilihan Anda di IDE):** Digunakan untuk implementasi kode berdasarkan `baby-step.md`.
3.  **Cursor (atau IDE dengan Integrasi AI & Git):** Digunakan sebagai lingkungan pengembangan utama, eksekusi tes, dan manajemen versi dengan Git.
4.  **Git & GitHub (atau Platform Version Control Lainnya):** Untuk manajemen kode sumber dan kolaborasi.

## Prinsip Utama

* **Perencanaan adalah Segalanya:** JANGAN biarkan AI merencanakan secara otonom. Anda adalah arsiteknya.
* **Konteks Jelas untuk AI:** Pastikan AI selalu memiliki akses ke semua informasi relevan melalui `memory-bank`.
* **Baby Steps yang Terdefinisi dengan Baik:** Setiap langkah implementasi harus kecil, spesifik, dapat diuji, dan bebas ambiguitas, ideal untuk dikerjakan oleh "junior developer" (dalam hal ini, AI coding assistant).
* **Iterasi Cepat & Tes Berkelanjutan:** Selalu uji setiap *baby step* sebelum melanjutkan.
* **Dokumentasi Berkelanjutan:** Update `status-todolist-saran.md` dan `architecture.md` secara berkala.

---

## Tahap 0: Pengaturan Awal Proyek (Setup)

**Tujuan:** Membangun fondasi proyek yang kuat dengan dokumen perencanaan yang jelas.

1.  **Buat Dokumen Desain Produk/Game (Product/Game Design Document - PDD/GDD)**
    * **Aksi (Anda dengan bantuan Gemini):**
        * Tuangkan ide proyek Anda. Minta Gemini untuk membuat draf PDD/GDD awal dalam format Markdown (misalnya, `dokumen-desain-produk.md`).
        * Review dan sempurnakan dokumen tersebut. Pastikan visi, fitur utama, dan target pengguna jelas.
    * **Output:** `dokumen-desain-produk.md`

2.  **Tentukan Tumpukan Teknologi (Tech Stack)**
    * **Aksi (Anda dengan bantuan Gemini):**
        * Minta Gemini untuk merekomendasikan tumpukan teknologi terbaik untuk proyek Anda. Tantang Gemini untuk mengusulkan tumpukan yang paling sederhana namun paling tangguh.
        * Simpan rekomendasi ini sebagai `tumpukan-teknologi.md`.
    * **Output:** `tumpukan-teknologi.md`

3.  **Buat Rencana Implementasi Awal (Implementation Plan)**
    * **Aksi (Anda dengan bantuan Gemini):**
        * Berikan Gemini:
            * `dokumen-desain-produk.md`
            * `tumpukan-teknologi.md`
        * Minta Gemini untuk membuat `rencana-implementasi.md` yang berisi langkah-langkah instruksi detail untuk membangun fitur inti (MVP - Minimum Viable Product).
        * Setiap langkah harus kecil, spesifik, dan menyertakan cara untuk memvalidasi implementasinya (tes).
        * Fokus pada fungsionalitas dasar, bukan semua fitur.
    * **Output:** `rencana-implementasi.md`

4.  **Siapkan "Memory Bank"**
    * **Aksi (Anda):**
        * Buat folder proyek utama Anda.
        * Di dalamnya, buat subfolder bernama `memory-bank`.
        * Tambahkan file-file berikut ke `memory-bank/`:
            * `dokumen-desain-produk.md`
            * `tumpukan-teknologi.md`
            * `rencana-implementasi.md`
            * `status-todolist-saran.md` (Buat file kosong ini. Akan diisi oleh Gemini nanti).
            * `baby-step.md` (Buat file kosong ini. Akan diisi oleh Gemini nanti).
            * `architecture.md` (Buat file kosong ini untuk dokumentasi arsitektur seiring berjalannya proyek).
            * `progress.md` (Buat file kosong ini untuk melacak langkah-langkah implementasi yang sudah selesai).

5.  **(Opsional) Aturan untuk AI di Cursor (Cursor Rules)**
    * Jika Anda menggunakan Cursor dan ingin AI di Cursor mengikuti aturan tertentu:
        * Di Cursor, buka chat dan gunakan perintah `/Generate Cursor Rules` dengan memilih file-file `.md` yang sudah dibuat (PDD, Tech Stack).
        * Review aturan yang dihasilkan. Pastikan menekankan modularitas dan praktik terbaik. Anda mungkin perlu menyesuaikannya secara manual.
        * Tandai aturan krusial (misalnya, selalu membaca `architecture.md` atau PDD sebelum menulis kode) sebagai aturan "Always".

---

## Tahap 1: Setup Environment & Klarifikasi Awal (Fase 0 di Alur Kerja Anda)

**Tujuan:** Memastikan lingkungan pengembangan siap dan rencana implementasi awal sudah jelas untuk AI.

* **Langkah 1.1: Setup Environment (Anda & Gemini)**
    * **Prompt untuk Gemini (seperti di alur kerja Anda [cite: image_667873.png]):**
        ```
        Baca semua file di \memory-bank untuk memahami konteks proyek saya. Saat ini saya berada di Fase 0 yaitu setup environment untuk koding. Tolong pandu saya berdasarkan dokumen rencana-implementasi.md untuk langkah-langkah setup environment yang diperlukan (misalnya, instalasi library, konfigurasi awal, struktur folder kode).
        ```
    * **Aksi (Anda):** Ikuti panduan dari Gemini untuk menyiapkan lingkungan pengembangan Anda.

* **Langkah 1.2: Klarifikasi Rencana Implementasi Awal (Anda & Gemini)**
    * **Prompt untuk Gemini (mirip "Making sure everything is clear" di Vibe Coding asli):**
        ```
        Baca kembali semua dokumen di \memory-bank, terutama rencana-implementasi.md. Apakah rencana tersebut sudah cukup jelas untuk memulai implementasi langkah pertama? Ajukan pertanyaan jika ada yang perlu diklarifikasi 100% untukmu sebelum kita membuat baby-step pertama.
        ```
    * **Aksi (Anda):** Jawab pertanyaan Gemini. Minta Gemini untuk membantu menyempurnakan `rencana-implementasi.md` jika ada ambiguitas.

---

## Tahap 2: Siklus Pengembangan Iteratif (Baby Steps)

**Tujuan:** Mengimplementasikan fitur secara bertahap, memastikan kualitas di setiap langkah. Siklus ini diulang untuk setiap *baby step*.

* **Langkah 2.1: Review Progres & Pembuatan Baby Step (Anda & Gemini)**
    * **Prompt untuk Gemini (sesuai alur kerja Anda [cite: image_667873.png]):**
        ```
        Baca semua file di \memory-bank untuk memahami konteks proyek saya dan progres terakhir (jika ada, dari status-todolist-saran.md atau progress.md). Saat ini, [jelaskan status terakhir, misal: "semua tes untuk baby-step sebelumnya sudah lolos" atau "kita akan memulai implementasi fitur X dari rencana-implementasi.md"].
        Tolong review codebase saat ini (jika sudah ada).
        Berikan update untuk file status-todolist-saran.md yang berisi:
        1. Status proyek saat ini.
        2. Daftar pekerjaan (To-Do List) untuk masa depan (berdasarkan rencana-implementasi.md).
        3. Saran "Baby-Step To-Do List" untuk langkah implementasi berikutnya yang paling logis dan kecil.

        Setelah itu, elaborasikan lebih lanjut "Baby-Step To-Do List" tersebut dan buat konten untuk file baby-step.md dengan detail. Inti dari baby-step.md ini adalah untuk menghilangkan ambiguitas; jika ada ambiguitas di dalamnya, update sampai tidak ada ambiguitas dan instruksinya layak untuk dikerjakan oleh junior developer (atau AI coding assistant). Pastikan setiap sub-tugas di baby-step.md menyertakan cara untuk melakukan tes/validasi.
        ```
    * **Aksi (Anda):**
        * Review `status-todolist-saran.md` dan `baby-step.md` yang dihasilkan Gemini.
        * Pastikan `baby-step.md` benar-benar detail, jelas, dan setiap tugasnya bisa diuji. Lakukan revisi jika perlu hingga Anda yakin.
    * **Output:** `status-todolist-saran.md` (terupdate), `baby-step.md` (baru atau terupdate).

* **Langkah 2.2: Implementasi Baby Step (Anda & Jules/AI Coding Assistant)**
    * **Prompt untuk Jules (sesuai alur kerja Anda [cite: image_667873.png]):**
        ```
        Baca semua dokumen di \memory-bank. Kemudian, baca dengan teliti file status-todolist-saran.md untuk mendapatkan konteks apa yang akan dikerjakan. Fokus pekerjaan kamu saat ini adalah pada file baby-step.md. Implementasikan semua tugas yang ada di baby-step.md.
        ```
    * **Aksi (Anda):**
        * Pandu Jules jika diperlukan.
        * Setelah Jules (atau AI coding Anda) menyelesaikan implementasi, jalankan semua tes yang relevan (unit test, integration test, atau tes manual berdasarkan kriteria validasi di `baby-step.md`).
        * Pastikan `pytest` (atau framework tes Anda) lolos semua. Debug jika ada masalah.
    * **Output:** Kode yang sudah diimplementasikan dan teruji.

* **Langkah 2.3: Update Progres & Dokumentasi (Anda, bisa dibantu Jules/Gemini untuk drafting)**
    * **Aksi (Anda):**
        * Setelah implementasi `baby-step.md` selesai dan semua tes lolos:
            * Update `progress.md`: Catat `baby-step` yang baru saja diselesaikan, tanggal, dan ringkasan singkat pekerjaan.
            * Update `architecture.md`: Tambahkan penjelasan tentang file-file baru yang dibuat atau file yang dimodifikasi secara signifikan, serta peran arsitekturalnya.
            * (Opsional, jika menggunakan AI untuk update status) Prompt ke Jules/Gemini: "Implementasi baby-step.md sudah selesai dan semua tes lolos. Tolong buat draf pembaruan untuk status-todolist-saran.md yang mencerminkan status ini dan usulkan To-Do List berikutnya." Anda kemudian mereview dan memfinalisasi `status-todolist-saran.md`.
    * **Output:** `progress.md` (terupdate), `architecture.md` (terupdate).

* **Langkah 2.4: Manajemen Kode & Sinkronisasi (Anda & Cursor/Git)**
    * **Aksi (sesuai alur kerja Anda di Cursor [cite: image_667873.png]):**
        * Di Cursor (atau terminal):
            * `git pull` (untuk memastikan Anda bekerja dengan versi terbaru jika ada kolaborasi atau perubahan dari sumber lain).
            * Commit semua perubahan kode yang sudah teruji: `git add .` lalu `git commit -m "Selesai implementasi baby-step: [Nama atau deskripsi singkat baby-step]"`.
            * Hapus `baby-step.md` (karena sudah selesai dikerjakan). Anda bisa juga memindahkannya ke folder arsip jika ingin menyimpan histori baby step.
            * Pastikan `status-todolist-saran.md` sudah terupdate dengan benar (dari langkah 2.1 atau 2.3).
            * `git push` untuk mengirim perubahan ke repositori remote.
    * **Output:** Kode ter-commit dan ter-push ke GitHub. `baby-step.md` bersih untuk siklus berikutnya.

* **Langkah 2.5: Ulangi Siklus**
    * Kembali ke Langkah 2.1 untuk membuat `baby-step.md` berikutnya. Ulangi siklus ini hingga semua fitur dalam `rencana-implementasi.md` (untuk MVP) selesai.

---

## Tahap 3: Penambahan Fitur Detail & Perbaikan

**Tujuan:** Setelah fungsionalitas dasar (MVP) selesai, tambahkan fitur-fitur lain, lakukan optimasi, dan perbaiki bug.

* **Untuk setiap fitur mayor baru:**
    1.  **Buat Rencana Implementasi Fitur:**
        * **Aksi (Anda & Gemini):** Buat file baru, misalnya `fitur-X-rencana-implementasi.md`. Di dalamnya, definisikan langkah-langkah kecil dan tes untuk fitur tersebut.
    2.  **Ikuti Siklus Pengembangan Iteratif (Tahap 2):** Gunakan `fitur-X-rencana-implementasi.md` sebagai panduan untuk membuat `baby-step.md` dan lakukan implementasi iteratif seperti di Tahap 2.

* **Perbaikan Bug & Penanganan Masalah:**
    * Jika prompt gagal atau merusak aplikasi: Gunakan fitur "restore" di Cursor atau revert ke commit Git terakhir (`git reset --hard HEAD~1`). Sempurnakan prompt Anda.
    * Untuk error JavaScript: Buka console browser (F12), salin error, dan paste ke Cursor/AI untuk bantuan.
    * Jika benar-benar buntu: Pertimbangkan untuk mengekstrak seluruh codebase (misalnya dengan RepoPrompt) dan minta bantuan Gemini dengan konteks penuh.

---

## Tips Tambahan

* **Prompt yang Lebih Baik:** Tambahkan instruksi seperti "Pikirkan selama yang kamu butuhkan untuk melakukan ini dengan benar, saya tidak terburu-buru. Yang penting adalah kamu mengikuti instruksi saya dengan tepat dan menjalankannya dengan sempurna. Ajukan pertanyaan jika saya kurang presisi."
* **Spesialisasi AI (jika menggunakan berbagai model):**
    * Marketing/Copywriting: GPT-4.x
    * Desain Grafis/Sprite 2D: ChatGPT-4o, Midjourney, DALL-E
    * Musik: Suno AI
    * Efek Suara: ElevenLabs (untuk voice), atau platform SFX lainnya.
* **Untuk Aplikasi (Non-Game):** Alur kerja ini sebagian besar sama. Ganti GDD dengan PRD (Product Requirements Document). Anda bisa menggunakan alat prototyping seperti v0.dev, Lovable, atau Kriya untuk membuat prototipe UI/UX terlebih dahulu.

---

Panduan ini adalah kerangka kerja. Sesuaikan dengan kebutuhan spesifik proyek Anda dan alat yang Anda gunakan. Selamat mencoba "Vibe Coding" versi Indonesia!
