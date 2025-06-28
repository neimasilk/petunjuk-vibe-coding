# Debugging & Git Recovery - Vibe Coding V1.4

## 🚨 Kapan Harus Reset Git?

Kadang kala, bug yang sulit atau perubahan yang merusak sistem memerlukan pendekatan "mundur dulu, lalu maju lagi". Berikut situasi di mana git reset adalah pilihan yang tepat:

### ✅ Situasi yang Tepat untuk Git Reset
- **Baby-step gagal total** dan sulit diperbaiki dalam waktu singkat
- **Aplikasi rusak parah** setelah implementasi fitur baru
- **Konflik merge yang rumit** dan memakan waktu lama
- **Perubahan eksperimental** yang ternyata tidak berhasil
- **Bug kompleks** yang membutuhkan waktu debugging lebih dari 2x estimasi baby-step

### ❌ Jangan Reset Jika
- Bug masih bisa diperbaiki dalam 30-60 menit
- Hanya masalah kecil seperti typo atau styling
- Sudah ada progress signifikan (>50% tugas selesai) yang sayang untuk dibuang

### 🌳 Decision Tree: Kapan Harus Reset?

```
Apakah bug dapat diperbaiki dalam 30-60 menit?
├─ YA → Lanjutkan debugging, jangan reset
└─ TIDAK → Apakah sudah >50% tugas selesai?
    ├─ YA → Coba debugging 1x lagi, lalu pertimbangkan reset
    └─ TIDAK → Apakah aplikasi masih berfungsi?
        ├─ YA → Reset soft (git reset --soft)
        └─ TIDAK → Reset hard (git reset --hard)
```

---

## 🔧 Panduan Git Recovery Step-by-Step

### 1. Cek Status dan History Terlebih Dahulu
```bash
# Lihat status file yang berubah
git status

# Lihat history commit terakhir
git log --oneline -5

# Lihat perubahan yang belum di-commit
git diff
```

### 2. Backup Perubahan Penting (Opsional)
```bash
# Jika ada kode yang ingin disimpan, buat stash
git stash push -m "Backup sebelum reset - [deskripsi]"

# Atau simpan ke folder memory-bank untuk menjaga kebersihan root
mkdir -p memory-bank/backups
cp src/file-penting.js memory-bank/backups/file-penting-$(date +%Y%m%d).js
```

### 3. Pilihan Recovery Berdasarkan Situasi

#### A. Reset ke Commit Sebelumnya (Paling Umum)
```bash
# Kembali ke commit sebelumnya, hapus semua perubahan
git reset --hard HEAD~1

# Atau ke commit spesifik (lihat dari git log)
git reset --hard [commit-hash]
```

#### B. Reset Soft (Pertahankan Perubahan di Staging)
```bash
# Kembali ke commit sebelumnya tapi pertahankan perubahan
git reset --soft HEAD~1

# Perubahan masih ada di staging area, bisa di-commit ulang
```

#### C. Batalkan Merge yang Bermasalah
```bash
# Jika sedang dalam proses merge yang bermasalah
git merge --abort

# Atau jika merge sudah selesai tapi bermasalah
git reset --hard HEAD~1
```

#### D. Revert Commit Tertentu (Lebih Aman)
```bash
# Buat commit baru yang membatalkan commit sebelumnya
git revert HEAD

# Atau revert commit spesifik
git revert [commit-hash]
```

---

## 🔍 Strategi Debugging Terstruktur

### 1. 📋 Template Bug Report Standar
Gunakan template ini untuk mendokumentasikan bug secara konsisten:

```markdown
## [🚨/⚠️/🐛] Bug Report - [YYYY-MM-DD]

**Lingkungan**: 
- OS: [Windows/Linux/macOS]
- Versi Aplikasi: [v1.0.0]
- Browser: [Chrome 120/Firefox 121] (jika web app)

**Reproduksi**:
1. [Langkah detail 1]
2. [Langkah detail 2]
3. [Bug muncul]

**Expected vs Actual**:
| Aspek | Expected | Actual |
|-------|----------|--------|
| Behavior | [Perilaku yang diharapkan] | [Perilaku yang terjadi] |
| Output | [Output yang diharapkan] | [Output yang terjadi] |
| Status | [Status yang diharapkan] | [Status yang terjadi] |

**Error Message**: 
```
[Paste error message lengkap di sini]
```

**File Terkait**: `[path/to/file.js:line]`
**Commit Terakhir**: `[commit-hash]` - "[commit message]"
**Assignee**: [Nama dari team-manifest.md]
**Priority**: [High/Medium/Low]
```

### 2. Template Debugging untuk AI
Ketika menemukan bug, gunakan format ini untuk mendapatkan bantuan AI yang efektif:

```
[ERROR]: "[Pesan error lengkap]"
[FILE]: [nama-file], baris [nomor]
[KONTEKS]: [Apa yang sedang dikerjakan saat error terjadi]
[COMMIT TERAKHIR]: "[Pesan commit terakhir yang terkait]"
[LANGKAH REPRODUKSI]:
1. [Langkah 1]
2. [Langkah 2]
3. [Error muncul]

[PERMINTAAN]:
1. Identifikasi kemungkinan penyebab utama (root cause)
2. Berikan 2 solusi alternatif
3. Sarankan cara mencegah bug serupa di masa depan
```

### 3. Debugging Bertahap
1. **Isolasi masalah**: Apakah bug di frontend, backend, atau integrasi?
2. **Reproduksi konsisten**: Pastikan bug bisa diulang dengan langkah yang sama
3. **Cek commit terakhir**: Apakah bug muncul setelah perubahan tertentu?
4. **Test di environment bersih**: Coba di branch baru atau setelah git reset
5. **Konsultasi tim**: Libatkan [Dokumenter](./roles/dokumenter.md) untuk review kode dan [Tester](./roles/tester.md) untuk validasi

### 4. Logging dan Monitoring
```javascript
// Tambahkan logging sementara untuk debugging
console.log('DEBUG: Nilai variable X:', variableX);
console.log('DEBUG: Status sebelum fungsi Y:', status);

// Gunakan try-catch untuk menangkap error
try {
    // kode yang berpotensi error
} catch (error) {
    console.error('ERROR di fungsi Z:', error.message);
    console.error('Stack trace:', error.stack);
}
```

---

## 🛡️ Pencegahan dan Best Practices

> 💡 **Tip**: Pencegahan bug dimulai dari kode yang mudah dibaca. Lihat [Panduan Dokumenter](./roles/dokumenter.md) untuk praktik komentar kode yang baik.

### 1. ✅ Commit Lebih Sering
```bash
# Commit setiap sub-tugas kecil selesai
git add .
git commit -m "WIP: Implementasi bagian A dari fitur X"

# Jangan tunggu sampai seluruh baby-step selesai
```

### 2. 🌿 Gunakan Branch untuk Eksperimen
```bash
# Buat branch untuk percobaan berisiko
git checkout -b experiment-fitur-baru

# Jika berhasil, merge ke main
git checkout main
git merge experiment-fitur-baru

# Jika gagal, hapus branch
git branch -D experiment-fitur-baru
```

### 3. 💾 Backup Berkala
```bash
# Push ke remote repository secara berkala
git push origin main

# Atau buat tag untuk milestone penting
git tag -a v1.0-stable -m "Versi stabil sebelum fitur besar"
```

### 4. 🧪 Testing Sebelum Commit
```bash
# Selalu test sebelum commit
npm test  # atau sesuai framework yang digunakan

# Test manual untuk fitur yang baru diimplementasi
# Pastikan tidak ada regression di fitur lama
```

---

## 📋 Checklist Recovery

### Sebelum Reset:
- [ ] Sudah coba debugging selama maksimal 2x estimasi waktu baby-step?
- [ ] Sudah konsultasi dengan AI menggunakan template debugging?
- [ ] Sudah backup kode penting yang ingin dipertahankan?
- [ ] Sudah catat pelajaran dari bug ini untuk dicegah di masa depan?

### Setelah Reset:
- [ ] Verifikasi aplikasi kembali berfungsi normal
- [ ] Update `papan-proyek.md` dengan baby-step yang lebih kecil (gunakan [template standar](./template-papan.md))
- [ ] Dokumentasikan bug dan solusinya di `memory-bank/progress.md` menggunakan [Template Bug Report](#1--template-bug-report-standar)
- [ ] Implementasi ulang dengan pendekatan yang lebih hati-hati
- [ ] Konsultasi dengan [Arsitek](./roles/arsitek.md) jika perlu redesign arsitektur

### Format Dokumentasi Bug (untuk di `memory-bank/progress.md`):
```markdown
## Bug Log - [Tanggal]
**Masalah**: [Deskripsi singkat bug]
**Penyebab**: [Root cause yang ditemukan]
**Solusi**: [Cara mengatasi]
**Pencegahan**: [Langkah untuk mencegah di masa depan]
**Commit Reset**: [Hash commit yang di-reset]
```

---

## 🎯 Kesimpulan

Git reset adalah tool yang powerful dan kadang diperlukan dalam pengembangan software. Kunci sukses menggunakannya:

1. **Jangan takut reset** jika memang diperlukan - lebih baik mundur dan maju dengan benar
2. **Selalu backup** hal-hal penting sebelum reset
3. **Dokumentasikan** setiap bug dan recovery untuk pembelajaran
4. **Pecah tugas** menjadi lebih kecil setelah reset untuk menghindari masalah serupa
5. **Test lebih sering** untuk mendeteksi masalah lebih awal

Ingat: **Vibe Coding bukan tentang kesempurnaan, tapi tentang progress yang konsisten**. Reset git adalah bagian normal dari proses pengembangan yang sehat.

---

**Lisensi:** MIT | **Versi:** 1.4 | **Bahasa:** Indonesia