# Panduan Singkat Vibe Coding V1.4

**TL;DR: Manusia dan AI bekerja sebagai tim setara dalam pengembangan software**

## 🎯 Konsep Inti

**Vibe Coding** = Metodologi di mana manusia dan AI berkolaborasi sebagai **tim hibrida**. Setiap anggota tim (manusia/AI) punya tanggung jawab jelas dan melakukan git commit atas nama mereka sendiri.

## 🚀 Setup 30 Detik

```bash
# Di folder proyek Anda
# Salin folder vibe-guide dari repositori Vibe Coding
cp -r /path/to/petunjuk-vibe-coding/vibe-guide .
chmod +x vibe-guide/init_vibe.sh
./vibe-guide/init_vibe.sh
```

## 🔄 Alur Kerja Harian

1. **Buka `memory-bank/papan-proyek.md`**
2. **Tulis 2-4 tugas kecil** (baby-steps)
3. **Assign ke manusia atau AI**
4. **Kerjakan tugas** sesuai assignee
5. **Test & commit** oleh yang mengerjakan
6. **Reset papan** dengan `./vibe-guide/init_vibe.sh --reset`

## 📁 File Penting

- `memory-bank/papan-proyek.md` → Daftar tugas aktif
- `memory-bank/spesifikasi-produk.md` → Visi & tech stack
- `vibe-guide/team-manifest.md` → Daftar anggota tim

## 💡 Tips Sukses

- **Baby-steps**: Tugas harus bisa selesai dalam 30-60 menit
- **Tes jelas**: Setiap tugas punya kriteria sukses yang terukur
- **Commit terpisah**: Manusia dan AI commit dengan nama masing-masing
- **Iterasi cepat**: Jangan perfectionist, fokus pada progress

## 🆘 Troubleshooting

- **AI bingung?** → Pastikan `spesifikasi-produk.md` lengkap
- **Tugas terlalu besar?** → Pecah jadi sub-tugas lebih kecil
- **Tes gagal terus?** → Sederhanakan kriteria tes

---

**Butuh detail lengkap?** → [PANDUAN_V1.4.md](./PANDUAN_V1.4.md)