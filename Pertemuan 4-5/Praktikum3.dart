void main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  // Menambahkan elemen nama dan NIM pada gifts
  gifts['nama'] = 'NamaAnda'; // Gantikan NamaAnda dengan nama Anda
  gifts['nim'] = 'NIMAnda';   // Gantikan NIMAnda dengan NIM Anda

  // Menambahkan elemen nama dan NIM pada nobleGases
  nobleGases[99] = 'NamaAnda'; // Gantikan NamaAnda dengan nama Anda
  nobleGases[100] = 'NIMAnda'; // Gantikan NIMAnda dengan NIM Anda

  // Mencetak kedua Map setelah ditambahkan elemen baru
  print(gifts); // Output akan berisi nama dan NIM di dalam Map
  print(nobleGases); // Output akan berisi nama dan NIM di dalam Map

  // Inisialisasi Map untuk mahasiswa
  var mhs1 = Map<String, String>();
  var mhs2 = Map<int, String>();

  // Menambahkan nama dan NIM pada mhs1 menggunakan .add() (meskipun .add() tidak ada di Map, menggunakan index)
  mhs1['nama'] = 'Amanda Jasmyne'; 
  mhs1['nim'] = '2241760081';   // Gantikan NIMAnda dengan NIM Anda

  // Menambahkan nama dan NIM pada mhs2 menggunakan .addAll()
  mhs2.addAll({1: 'Amanda', 2: '2241760081'}); 

  // Mencetak Map mahasiswa
  print(mhs1); // Output akan berisi nama dan NIM
  print(mhs2); // Output akan berisi nama dan NIM
}