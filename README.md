# Petunjuk Vibe Coding Indonesia V1.4

**Metodologi pengembangan perangkat lunak kolaboratif antara Manusia dan AI**

Vibe Coding adalah pendekatan pengembangan perangkat lunak di mana **Manusia dan AI bekerja sebagai tim hibrida yang setara**. Setiap anggota tim memiliki tanggung jawab jelas dan berkontribusi langsung ke basis kode.

## 🚀 Mulai Cepat

1. **[Download/Clone repositori ini](./INSTALASI.md#-cara-mendapatkan-vibe-coding)**
2. **Salin folder `vibe-guide/` ke proyek Anda**
3. **Jalankan setup:**
   ```bash
   chmod +x vibe-guide/init_vibe.sh
   ./vibe-guide/init_vibe.sh
   ```
4. **Mulai coding:** Baca [Panduan Singkat](./PANDUAN_SINGKAT.md)

> **Detail lengkap:** Lihat [Panduan Instalasi](./INSTALASI.md)

## 🌟 Fitur Utama V1.4

- **Tim Hibrida**: AI sebagai pengembang resmi dengan tanggung jawab tercatat
- **Tugas Teralokasi**: Setiap tugas memiliki assignee yang jelas (manusia atau AI)
- **Otomatisasi Penuh**: Skrip untuk setup dan reset alur kerja
- **Git Commit oleh AI**: AI melakukan commit atas nama mereka sendiri
- **Panduan Terintegrasi**: Semua materi dalam satu folder `vibe-guide/`
- **Panduan Perencanaan Produk**: Dilengkapi dengan panduan pembuatan Product Requirements Document (PRD) untuk perencanaan awal yang matang

## 📂 Struktur Workspace

Setelah inisialisasi, proyek Anda akan memiliki struktur:

```
my-project/
├── vibe-guide/               # Folder panduan (disalin dari repo ini)
│   ├── VIBE_CODING_GUIDE.md   # Panduan workspace
│   ├── template-papan.md      # Template baby-step
│   ├── init_vibe.sh           # Script setup otomatis
│   ├── team-manifest.md       # Daftar anggota tim
│   ├── PERAN_TIM.md           # Definisi peran
│   ├── DEBUGGING_GIT.md       # Panduan debugging
│   └── roles/                 # Detail peran tim
│       ├── arsitek.md
│       ├── dokumenter.md
│       └── ...
│
├── memory-bank/              # Konteks aktif (dibuat otomatis)
│   ├── spesifikasi-produk.md  # PRD proyek
│   ├── papan-proyek.md       # Baby-step saat ini
│   ├── architecture.md       # Desain sistem
│   └── progress.md           # Catatan kemajuan
│
├── baby-steps-archive/       # Riwayat pekerjaan (dibuat otomatis)
│   └── baby-step-*.md        # Arsip per langkah
│
└── src/                      # Kode aplikasi Anda
```

## 🔄 Alur Kerja Singkat

1. **Perencanaan**: Update `memory-bank/papan-proyek.md` dengan tugas-tugas kecil
2. **Penugasan**: Tentukan assignee untuk setiap tugas (manusia/AI)
3. **Implementasi**: Setiap assignee mengerjakan tugasnya
4. **Testing**: Validasi hasil sesuai kriteria
5. **Commit**: Assignee melakukan git commit
6. **Reset**: Jalankan `./vibe-guide/init_vibe.sh --reset` untuk siklus baru

## 📚 Glosarium

| Istilah | Definisi |
|---------|----------|
| **Baby-step** | Tugas kecil yang dapat diselesaikan dalam 30-60 menit |
| **Memory-bank** | Folder konteks aktif yang berisi informasi proyek terkini |
| **Assignee** | Anggota tim (manusia atau AI) yang bertanggung jawab atas tugas tertentu |
| **Tim Hibrida** | Kolaborasi setara antara manusia dan AI dalam pengembangan |
| **Git Reset** | Perintah untuk kembali ke commit sebelumnya |
| **Progress Signifikan** | >50% tugas dalam baby-step telah selesai |
| **Estimasi Baby-step** | Waktu target penyelesaian: 30-60 menit |

## 📖 Dokumentasi

- **[📚 Panduan Utama](./vibe-guide/VIBE_CODING_GUIDE.md)** - Panduan lengkap V1.4
- **[👥 Panduan Peran Tim](./vibe-guide/PERAN_TIM.md)** - Definisi peran Arsitek, Dokumenter, Tester, dll.
- **[⚡ Instalasi](./INSTALASI.md)** - Cara mendapatkan dan setup Vibe Coding
- **[📋 Panduan Singkat](./PANDUAN_SINGKAT.md)** - Konsep dasar & alur kerja
- **[🐛 Debugging & Git Recovery](./vibe-guide/DEBUGGING_GIT.md)** - Panduan troubleshooting dan recovery

## 🤝 Kontribusi

Kami menerima kontribusi untuk meningkatkan panduan ini. Silakan buat issue atau pull request.

---

**Lisensi:** MIT | **Versi:** 1.4 | **Bahasa:** Indonesia
