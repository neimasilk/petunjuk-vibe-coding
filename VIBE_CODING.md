# Vibe Coding

**Metodologi kolaborasi manusia dan AI yang sederhana.**

---

## 🎯 Konsep Inti

**1. Tim Hibrida**
- Manusia dan AI adalah rekan setim
- Setiap anggota punya nama dan peran
- AI punya ownership atas pekerjaan

**2. Baby-Step**
- Pecah kerja jadi unit kecil (30-60 menit)
- Setiap task punya assignee jelas
- Fokus selesai, bukan sempurna

**3. Memory Bank**
- Dokumentasi terpusat
- Single source of truth
- Update real-time

**4. Manual Control**
- User control penuh
- Simple over complex
- No automation overkill

---

## 🔄 Workflow

### Siklus Sederhana
1. **Planning** - Tulis 2-4 task kecil
2. **Assignment** - Beri ke anggota tim
3. **Implementation** - Yang kerja, yang commit
4. **Documentation** - Update progress

### Alur Proses
```
Start → Setup → Plan → Work → Test → Document → Repeat
```

---

## 👥 Tim

### Peran Dasar
- **Arsitek:** Planning & design
- **Developer:** Implementasi
- **Tester:** Validasi
- **Dokumenter:** Update docs

### Team Manifest
```markdown
| Nama | Tipe | Peran |
|------|------|-------|
| Budi | Manusia | Arsitek |
| Cody | AI | Developer |
```

---

## 📁 Memory Bank

### Struktur File
```
memory-bank/
├── README.md      # Overview proyek
├── team.md        # Daftar tim
├── current-work.md # Task aktif
└── progress.md    # Riwayat
```

### Current Work Template
```markdown
# Baby-Step: [Fitur]

## Tujuan
[Hasil yang diharapkan]

## Tasks
- [ ] T1: [Deskripsi] | Assignee: [Nama] | Tes: [Kriteria]
- [ ] T2: [Deskripsi] | Assignee: [Nama] | Tes: [Kriteria]

## Status
Progress: [0/2]
```

---

## 🚀 Mulai

1. **Setup tim** - Buat `memory-bank/team.md`
2. **Buat memory bank** - Copy struktur di atas
3. **Mulai kerja** - Tulis baby-step pertama

---

## 💬 Komunikasi

### Human → AI
```
Halo [Nama AI],

Context: [Konteks proyek]
Task: [Task spesifik]
Requirements: [Kriteria sukses]

Please implement and commit.
```

### AI → Human
- Jelaskan asumsi
- Berikan options
- Confirm sebelum implement

---

## 🎯 Principles

### ✅ Do
- Simple solutions
- Manual control
- Clear docs
- Working code
- Team work

### ❌ Don't
- Over-engineer
- Complex automation
- Excessive docs
- Perfect first try
- Work alone

---

## 🌟 Philosophy

**Collaboration over automation.**
**Simplicity over complexity.**
**People (and AI) working together.**

---

**Version:** 2.0 | **Focus:** Simple & Collaborative