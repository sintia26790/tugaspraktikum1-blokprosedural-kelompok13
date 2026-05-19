# Tugas Praktikum 2 - Pemrograman Basis Data

## Studi Kasus Validasi Data Akademik Mahasiswa Menggunakan Blok Prosedural

Repository ini berisi implementasi tugas praktikum mata kuliah Pemrograman Basis Data mengenai penggunaan struktur blok prosedural pada MySQL. Program dibuat menggunakan stored procedure untuk mensimulasikan blok prosedural dalam proses validasi data akademik mahasiswa.

---

## Identitas Kelompok

### Anggota Kelompok
1. HASBIAH — IK2411027
2. SINTIA — IK2411053

### Mata Kuliah
Pemrograman Basis Data

### Dosen Pengampu
Abdul Malik, S.Kom., M.Cs.

---

## Deskripsi Program

Program ini dirancang untuk melakukan simulasi pemeriksaan data akademik mahasiswa sebelum proses pengisian KRS. Implementasi dibuat menggunakan MySQL Procedure dengan memanfaatkan:

- Struktur blok `BEGIN ... END`
- Deklarasi variabel
- Konstanta
- Percabangan `IF ... ELSE`
- Validasi data akademik
- Pengelompokan kategori akademik

---

## Fitur Program

### Bagian A — Identitas Mahasiswa
Menampilkan identitas mahasiswa menggunakan variabel dan konstanta.

### Bagian B — Validasi Data Akademik
Melakukan:
- validasi status akademik,
- pengecekan pembayaran UKT,
- klasifikasi beban studi,
- klasifikasi performa akademik.

### Bagian C — Ringkasan Kelayakan KRS
Menggabungkan identitas mahasiswa dengan hasil validasi akademik untuk menentukan kelayakan pengambilan KRS.

### Bagian D — Analisis Dua Mahasiswa
Membandingkan dua mahasiswa berdasarkan:
- nilai IPK,
- jumlah SKS.

---

## Teknologi yang Digunakan

- MySQL
- XAMPP
- phpMyAdmin
- GitHub

---

## Struktur Repository

```text
tugaspraktikum1-blokprosedural-kelompok1
│
├── README.md
├── praktikum_pbd.sql
├── laporan.pdf
│
└── screenshot
    ├── bagianA.png
    ├── bagianB.png
    ├── bagianC.png
    ├── bagianD.png
    ├── skenario1.png
    ├── skenario2.png
    └── skenario3.png
