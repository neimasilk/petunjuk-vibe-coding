# Panduan Instalasi Vibe Coding V1.4

## 📥 Cara Mendapatkan Vibe Coding

### Opsi 1: Clone dari GitHub (Direkomendasikan)
```bash
# Clone repositori
git clone https://github.com/username/petunjuk-vibe-coding.git

# Masuk ke direktori
cd petunjuk-vibe-coding
```

### Opsi 2: Download ZIP
1. Kunjungi halaman GitHub repositori ini
2. Klik tombol "Code" → "Download ZIP"
3. Extract file ZIP ke komputer Anda

## 🚀 Setup di Proyek Baru

### Langkah 1: Salin Folder Vibe-Guide

**Linux/macOS:**
```bash
# Dari direktori proyek Anda
cp -r /path/to/petunjuk-vibe-coding/vibe-guide .

# Contoh konkret:
# cp -r ~/Downloads/petunjuk-vibe-coding/vibe-guide .
```

**Windows (PowerShell):**
```powershell
# Dari direktori proyek Anda
Copy-Item -Path "C:\path\to\petunjuk-vibe-coding\vibe-guide" -Destination "." -Recurse

# Contoh konkret:
# Copy-Item -Path "C:\Users\Username\Downloads\petunjuk-vibe-coding\vibe-guide" -Destination "." -Recurse
```

### Langkah 2: Inisialisasi

**Linux/macOS:**
```bash
# Berikan izin eksekusi
chmod +x vibe-guide/init_vibe.sh

# Jalankan inisialisasi
./vibe-guide/init_vibe.sh
```

**Windows (Git Bash atau WSL):**
```bash
# Berikan izin eksekusi
chmod +x vibe-guide/init_vibe.sh

# Jalankan inisialisasi
./vibe-guide/init_vibe.sh
```

**Windows (PowerShell - jika bash tidak tersedia):**
```powershell
# Jalankan manual setup dengan membuat folder dan file yang diperlukan
# Lihat bagian "Setup Manual Windows" di bawah
```

### Langkah 3: Konfigurasi Tim
```bash
# Edit file team manifest
nano vibe-guide/team-manifest.md
# atau
code vibe-guide/team-manifest.md
```

## 📁 Struktur Workspace Setelah Instalasi

Setelah menjalankan `init_vibe.sh`, proyek Anda akan memiliki:

```
my-project/
├── vibe-guide/               # Folder panduan (disalin dari repo)
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
│   ├── progress.md           # Catatan kemajuan
│   └── summary-report.md     # 📊 Laporan ringkasan proyek
│
├── baby-steps-archive/       # Riwayat pekerjaan (dibuat otomatis)
│   └── baby-step-*.md        # Arsip per langkah
│
└── src/                      # Kode aplikasi Anda
```

## ✅ Verifikasi Instalasi

Pastikan instalasi berhasil dengan mengecek:

```bash
# Cek struktur folder
ls -la

# Cek isi memory-bank
ls -la memory-bank/

# Cek template papan proyek
cat memory-bank/papan-proyek.md
```

## 🔄 Reset/Update

Untuk mereset papan proyek setelah menyelesaikan baby-step:

**Linux/macOS/Windows (Git Bash):**
```bash
./vibe-guide/init_vibe.sh --reset
```

**Windows (PowerShell):**
```powershell
# Reset manual - hapus dan buat ulang papan proyek
Remove-Item "memory-bank\papan-proyek.md" -Force
Copy-Item "vibe-guide\template-papan.md" "memory-bank\papan-proyek.md"
```

## 🪟 Setup Manual Windows

Jika Anda menggunakan Windows tanpa Git Bash atau WSL, ikuti langkah manual ini:

### 1. Buat Struktur Folder
```powershell
# Buat folder utama
New-Item -ItemType Directory -Path "memory-bank" -Force
New-Item -ItemType Directory -Path "baby-steps-archive" -Force
New-Item -ItemType Directory -Path "src" -Force
```

### 2. Salin File Template
```powershell
# Salin template papan proyek
Copy-Item "vibe-guide\template-papan.md" "memory-bank\papan-proyek.md"

# Buat file kosong lainnya
New-Item -ItemType File -Path "memory-bank\spesifikasi-produk.md" -Force
New-Item -ItemType File -Path "memory-bank\architecture.md" -Force
New-Item -ItemType File -Path "memory-bank\progress.md" -Force

# Salin template summary report
if (Test-Path "vibe-guide\template-summary.md") {
    Copy-Item "vibe-guide\template-summary.md" "memory-bank\summary-report.md"
    Write-Host "📊 Summary report dibuat: memory-bank\summary-report.md"
}
```

### 3. Inisialisasi Git (Opsional)
```powershell
# Jika belum ada git repository
git init
git add .
git commit -m "Initial Vibe Coding setup"
```

## 🆘 Troubleshooting

### Permission Denied
```bash
# Jika mendapat error permission denied
chmod +x vibe-guide/init_vibe.sh
```

### File Tidak Ditemukan
```bash
# Pastikan Anda berada di direktori yang benar
pwd

# Pastikan folder vibe-guide ada
ls -la vibe-guide/
```

### Skrip Tidak Berjalan
```bash
# Jalankan dengan bash eksplisit
bash vibe-guide/init_vibe.sh
```

---

**Selanjutnya:** Baca [PANDUAN_SINGKAT.md](./PANDUAN_SINGKAT.md) untuk memulai pengembangan dengan Vibe Coding.