# Panduan Peran Tim dalam Vibe Coding

Dokumen ini mendefinisikan peran dan tanggung jawab setiap anggota dalam tim Vibe Coding untuk memastikan kolaborasi yang efisien dan meminimalisir tumpang tindih. Satu individu dapat memegang beberapa peran, namun pemisahan tanggung jawab ini penting untuk kejelasan.

##  Lima Peran Utama

| Peran | Fokus Utama | Detail Panduan |
| :--- | :--- | :--- |
| 1. **Arsitek** | Gambaran besar, desain sistem, dan kualitas teknis. | [Lihat Panduan Arsitek](./roles/arsitek.md) |
| 2. **Dokumenter** | Koherensi dokumentasi dan pemahaman kode. | [Lihat Panduan Dokumenter](./roles/dokumenter.md) |
| 3. **Tester** | Kualitas dan keandalan fungsionalitas. | [Lihat Panduan Tester](./roles/tester.md) |
| 4. **Dev. Backend** | Logika sisi server, API, dan database. | [Lihat Panduan Dev. Backend](./roles/developer_backend.md) |
| 5. **Dev. Frontend** | Antarmuka pengguna (UI) dan pengalaman pengguna (UX). | [Lihat Panduan Dev. Frontend](./roles/developer_frontend.md) |

## Alur Kerja dengan Peran Terdefinisi

Berikut adalah contoh bagaimana peran-peran ini berinteraksi dalam satu siklus *baby-step*:

1.  **Perencanaan (Arsitek):**
    *   **Arsitek** merancang `papan-proyek.md` berikutnya, memecah fitur menjadi tugas Frontend dan Backend.
    *   **Arsitek** mengisi kolom `Assignee` untuk setiap tugas, menugaskannya ke **Dev. Frontend** atau **Dev. Backend** (bisa Manusia atau AI).

2.  **Implementasi (Developer):**
    *   **Dev. Frontend** dan **Dev. Backend** mengerjakan tugas masing-masing.
    *   Selama proses, **Dokumenter** membaca kode yang baru dibuat untuk memastikan kejelasan dan mencatat area yang mungkin memerlukan dokumentasi lebih lanjut.

3.  **Pengujian (Tester):**
    *   Setelah implementasi selesai, **Tester** mengambil alih.
    *   **Tester** membuat dan menjalankan skrip pengujian untuk memvalidasi fungsionalitas sesuai "Kriteria Tes".

4.  **Review & Reset (Arsitek & Dokumenter):**
    *   **Arsitek** melakukan *code review* akhir.
    *   **Dokumenter** memastikan semua dokumentasi terkait (jika ada) sudah diperbarui.
    *   **Arsitek** menjalankan skrip `init_vibe.sh --reset` untuk memulai siklus baru.

## 🔄 Klarifikasi Alur Kerja

### Kapan Peran Berinteraksi?
- **Paralel:** Dev. Frontend dan Dev. Backend dapat bekerja bersamaan pada tugas berbeda
- **Sequential:** Tester menunggu implementasi selesai sebelum memulai pengujian
- **Continuous:** Dokumenter dapat bekerja sepanjang siklus, memperbarui dokumentasi seiring kemajuan

### Siapa yang Bertanggung Jawab?
- **Assignee dalam papan-proyek.md:** Penanggung jawab utama untuk menyelesaikan tugas
- **Peran lain:** Dapat memberikan input dan review, tetapi tidak mengambil alih tugas
- **Arsitek:** Selalu bertanggung jawab atas keputusan akhir dan kualitas keseluruhan

### Resolusi Konflik
- **Disagreement teknis:** Arsitek memiliki keputusan akhir
- **Scope creep:** Arsitek menentukan apakah perubahan masuk baby-step saat ini atau yang berikutnya
- **Quality issues:** Tester dapat memblokir merge hingga kriteria tes terpenuhi
