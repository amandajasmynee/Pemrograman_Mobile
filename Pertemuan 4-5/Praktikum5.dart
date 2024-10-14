void main() {
  // Record dengan beberapa elemen
  var record = ('first', a: 2, b: true, 'last');
  print('Record awal: $record');

  // Memanggil fungsi tukar dengan nilai tuple
  var swapped = tukar((2, 5)); // Menggunakan tuple (int, int) untuk pertukaran
  print('Record setelah ditukar: $swapped');

  // Inisialisasi record mahasiswa dengan tipe (String, int)
  (String, int) mahasiswa = ('Amanda Jasmyne', 2241760081);
  print('Mahasiswa: $mahasiswa');

  // Deklarasi dan penggunaan record mahasiswa2
  var mahasiswa2 = ('Amanda Jasmyne', a: 2, b: true, '2241760081');

  // Mengakses elemen-elemen dari record mahasiswa2
  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a);  // Prints 2
  print(mahasiswa2.b);  // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}

// Fungsi tukar untuk menukar dua nilai dalam tuple
(int, int) tukar((int, int) record) {
  var (a, b) = record; // Mengambil nilai dari tuple
  return (b, a); // Mengembalikan tuple dengan nilai yang ditukar
}
