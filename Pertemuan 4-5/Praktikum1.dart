// void main() {
//   var list = [1, 2, 3];
//   assert(list.length == 3);
//   assert(list[1] == 2);
//   print(list.length); 
//   print(list[1]); 

//   list[1] = 1;
//   assert(list[1] == 1);
//   print(list[1]); 
// }

// Modifikasi
void main() {
  // Membuat list dengan panjang 5, diisi dengan nilai null
  final List<String?> list = List.filled(5, null);

  // Mengisi elemen indeks ke-1 dan ke-2 dengan Nama dan NIM
  list[1] = "Amanda Jasmyne";
  list[2] = "2241760081";

  // Menampilkan isi list
  print(list);
}
