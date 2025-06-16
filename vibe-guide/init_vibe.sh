#!/bin/bash

# Vibe Coding Initializer/Resetter Script v1.4

# Fungsi untuk mencatat progres dan mengarsipkan papan
archive_and_log() {
    TIMESTAMP=$(date +%Y%m%d-%H%M)
    ARCHIVE_FILE="baby-steps-archive/baby-step-$TIMESTAMP.md"
    FEATURE_NAME=$(grep "BABY-STEP BERJALAN:" memory-bank/papan-proyek.md | sed 's/### BABY-STEP BERJALAN: //')

    # 1. Arsipkan papan yang sudah selesai
    mv memory-bank/papan-proyek.md "$ARCHIVE_FILE"
    echo "✅ Papan proyek diarsipkan ke: $ARCHIVE_FILE"

    # 2. Catat progres di file progress.md
    echo "$(date +%Y-%m-%d): Selesai '$FEATURE_NAME'. Lihat arsip: $ARCHIVE_FILE" >> memory-bank/progress.md
    echo "✅ Progres dicatat di memory-bank/progress.md"
}

# Cek apakah ini adalah reset atau inisialisasi awal
if [ "$1" == "--reset" ]; then
    echo "🚀 Mereset alur kerja Vibe Coding..."
    archive_and_log
    # Salin template baru
    cp vibe-guide/template-papan.md memory-bank/papan-proyek.md
    echo "✅ Papan proyek baru telah dibuat dari template."
    echo "✨ Siklus berikutnya siap dimulai!"
    exit 0
fi

# Inisialisasi awal
echo "🚀 Inisialisasi Proyek Vibe Coding v1.4 (Edisi Hibrida)..."
mkdir -p memory-bank baby-steps-archive src

# Buat file jika belum ada
touch memory-bank/{spesifikasi-produk,architecture,progress}.md
touch vibe-guide/team-manifest.md

# Pastikan VIBE_CODING_GUIDE.md ada
if [ ! -f "vibe-guide/VIBE_CODING_GUIDE.md" ]; then
    echo "⚠️  File vibe-guide/VIBE_CODING_GUIDE.md tidak ditemukan!"
    echo "   Pastikan Anda telah menyalin folder vibe-guide/ dengan lengkap."
fi

# Buat template jika belum ada
if [ ! -f "vibe-guide/template-papan.md" ]; then
    cat > vibe-guide/template-papan.md << EOL
### STATUS [Update: <tanggal>]
- *Tulis ringkasan progres terakhir di sini.*

### REFERENSI ARSIP
- *Link ke baby-step sebelumnya yang relevan.*

### BABY-STEP BERJALAN: <Nama-Fitur-Spesifik>
- **Tujuan:** *Jelaskan hasil akhir yang diharapkan dari baby-step ini.*
- **Tugas:**
    - [ ] **T1:** Deskripsi tugas | **File:** \`path/ke/file\` | **Tes:** Kriteria sukses | **Assignee:** <Nama dari team-manifest.md>
    - [ ] **T2:** ... | **File:** ... | **Tes:** ... | **Assignee:** <Nama dari team-manifest.md>

### SARAN & RISIKO
- *(Bagian ini akan diisi oleh AI untuk memberikan saran atau peringatan risiko teknis)*
EOL
fi

cp vibe-guide/template-papan.md memory-bank/papan-proyek.md

echo "✅ Struktur workspace berhasil dibuat."
echo "📂 Struktur workspace Anda:"
echo "   my-project/"
echo "   ├── vibe-guide/               # Folder khusus panduan"
echo "   │   ├── VIBE_CODING_GUIDE.md   # Panduan utama"
echo "   │   ├── template-papan.md      # Template terstandarisasi"
echo "   │   └── init_vibe.sh           # Script setup otomatis"
echo "   ├── memory-bank/              # Konteks aktif"
echo "   ├── baby-steps-archive/       # Riwayat pekerjaan"
echo "   └── src/                      # Kode aplikasi"
echo ""
echo "➡️ Langkah selanjutnya:"
echo "   1. Baca panduan: vibe-guide/VIBE_CODING_GUIDE.md"
echo "   2. Daftarkan tim: vibe-guide/team-manifest.md"