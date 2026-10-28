class Queue<T> {
  final List<T> _items = [];

  // Menambahkan elemen ke dalam antrean (posisi paling belakang)
  void enqueue(T item) {
    _items.add(item);
    print('[Enqueue] $item berhasil masuk antrean.');
  }

  // Mengambil dan menghapus elemen dari depan antrean (FIFO)
  T? pop() {
    if (_items.isEmpty) {
      print('[Pop Gagal] Antrean saat ini kosong.');
      return null;
    }

    T item = _items.removeAt(0);
    print('[Pop] $item telah diproses dan keluar antrean.');
    return item;
  }

  // Menampilkan isi antrean saat ini
  void tampilkan() {
    if (_items.isEmpty) {
      print('Status Antrean: (Kosong)');
    } else {
      print(
        'Status Antrean: Depan -> ${_items.join(', ')} '
        '<- Belakang (Total: ${_items.length})',
      );
    }
  }
}

void main() {
  print('=== SIMULASI ANTREAN SAMURAI WARRIORS ===');
  Queue<String> antreanSamurai = Queue<String>();

  antreanSamurai.tampilkan();

  // Memasukkan karakter dari seri Samurai Warriors ke antrean
  antreanSamurai.enqueue('Yukimura Sanada');
  antreanSamurai.enqueue('Nobunaga Oda');
  antreanSamurai.enqueue('Mitsuhide Akechi');
  antreanSamurai.enqueue('Keiji Maeda');
  antreanSamurai.enqueue('Masamune Date');

  antreanSamurai.tampilkan();

  print('\\n-- Memproses Karakter Pertama (FIFO) --');
  antreanSamurai.pop();
  antreanSamurai.tampilkan();

  print('\\n-- Menambahkan Karakter Baru --');
  antreanSamurai.enqueue('Mitsunari Ishida');
  antreanSamurai.tampilkan();

  print('\\n-- Memproses Dua Karakter Berikutnya --');
  antreanSamurai.pop();
  antreanSamurai.pop();
  antreanSamurai.tampilkan();

  print('\\n-- Antrean Karakter Samurai Warriors --');
  print('Karakter yang masuk lebih dahulu akan keluar lebih dahulu.');

  print('\\n=== SIMULASI ANTREAN NOMOR KARAKTER ===');
  Queue<int> nomorKarakter = Queue<int>();
  nomorKarakter.enqueue(1);
  nomorKarakter.enqueue(2);
  nomorKarakter.enqueue(3);
  nomorKarakter.tampilkan();
  nomorKarakter.pop();
  nomorKarakter.tampilkan();
}
