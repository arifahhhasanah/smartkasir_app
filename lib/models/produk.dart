// Blueprint / Struktur Data (Model) entitas produk kasir ritel SmartKasir
class Produk {
  final int? id;
  final String kodeProduk;
  final String nama;
  final String kategori;
  final double hargaBeli;
  final double hargaJual;
  final int stok;
  final String gambarUrl;
  final int diskonPersen;

  const Produk({
    this.id,
    required this.kodeProduk,
    required this.nama,
    required this.kategori,
    required this.hargaBeli,
    required this.hargaJual,
    required this.stok,
    required this.gambarUrl,
    this.diskonPersen = 0,
  });

  // Mengonversi objek class Produk menjadi Map untuk disimpan ke SQLite
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'kode_produk': kodeProduk,
      'nama_produk': nama,
      'kategori': kategori,
      'harga_beli': hargaBeli,
      'harga_jual': hargaJual,
      'stok': stok,
      'gambar_path': gambarUrl,
      'diskon_persen': diskonPersen,
      'created_at': DateTime.now().toIso8601String(),
    };
  }

  // Membaca baris data dari SQLite dan mengubahnya kembali menjadi objek Produk
  factory Produk.fromMap(Map<String, dynamic> map) {
    return Produk(
      id: map['id'] as int?,
      kodeProduk: map['kode_produk'] as String,
      nama: map['nama_produk'] as String,
      kategori: map['kategori'] as String,
      hargaBeli: (map['harga_beli'] as num).toDouble(),
      hargaJual: (map['harga_jual'] as num).toDouble(),
      stok: map['stok'] as int,
      gambarUrl: map['gambar_path'] as String? ?? '',
      diskonPersen: map['diskon_persen'] as int? ?? 0,
    );
  }
}

// Daftar 6 produk awal ritel untuk mengisi database SQLite saat pertama kali dibuat
final List<Produk> produkAwalSQLite = [
  const Produk(
    kodeProduk: 'PRD-001',
    nama: 'Kopi Susu Gula Aren 250ml',
    kategori: 'Minuman',
    hargaBeli: 10000,
    hargaJual: 18000,
    stok: 24,
    gambarUrl: 'https://images.unsplash.com/photo-1541167760496-1628856ab772?w=500',
    diskonPersen: 20,
  ),
  const Produk(
    kodeProduk: 'PRD-002',
    nama: 'Roti Bakar Cokelat Keju',
    kategori: 'Makanan',
    hargaBeli: 8000,
    hargaJual: 15000,
    stok: 5,
    gambarUrl: 'https://images.unsplash.com/photo-1554118811-1e0d58224f24?w=500',
  ),
  const Produk(
    kodeProduk: 'PRD-003',
    nama: 'Matcha Latte Ice',
    kategori: 'Minuman',
    hargaBeli: 12000,
    hargaJual: 22000,
    stok: 0,
    gambarUrl: 'https://images.unsplash.com/photo-1536256263959-770b48d82b0a?w=500',
  ),
  const Produk(
    kodeProduk: 'PRD-004',
    nama: 'Nasi Goreng Banjar Spesial',
    kategori: 'Makanan',
    hargaBeli: 15000,
    hargaJual: 25000,
    stok: 12,
    gambarUrl: 'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=500',
    diskonPersen: 10,
  ),
  const Produk(
    kodeProduk: 'PRD-005',
    nama: 'Kentang Goreng Crispy',
    kategori: 'Snack',
    hargaBeli: 6000,
    hargaJual: 12000,
    stok: 18,
    gambarUrl: 'https://images.unsplash.com/photo-1576107232684-1279f396791f?w=500',
  ),
  const Produk(
    kodeProduk: 'PRD-006',
    nama: 'Air Mineral Botol 600ml',
    kategori: 'Minuman',
    hargaBeli: 3000,
    hargaJual: 5000,
    stok: 40,
    gambarUrl: 'https://images.unsplash.com/photo-1548839140-29a749e1cf4d?w=500',
  ),
];