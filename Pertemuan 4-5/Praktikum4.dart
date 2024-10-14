// void main() {
//   var list = [1, 2, 3];
//   var list2 = [0, ...list]; // Menggunakan spread operator untuk menambahkan elemen dari list

//   print(list); // Output: [1, 2, 3]
//   print(list2); // Output: [0, 1, 2, 3]
//   print(list2.length); // Output: 4 (jumlah elemen di list2)

//   var list1 = [1, 2, null]; // Deklarasikan list1
//   print(list1); // Output: [1, 2, null]
  
//   var list3 = [0, ...?list1]; // Spread operator with null-aware (untuk menghindari error jika list1 null)
//   print(list3); // Output: [0, 1, 2, null]
//   print(list3.length); // Output: 4 (jumlah elemen di list3 termasuk null)
// }

// void main() {
//   var list = [1, 2, 3];
//   var nim = [2, 2, 4, 1, 7, 6, 0, 0, 8, 1]; 
//   var list2 = [0, ...list]; // Menggunakan spread operator untuk menambahkan elemen dari list
//   var list3 = [...nim, ...list]; // Menambahkan NIM dan elemen dari list menggunakan spread operator
  
//   bool promoActive = true; // Deklarasikan promoActive
//   var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet']; // Menggunakan conditional list
  
//   // Misal kita menggunakan variabel `loginStatus` untuk kondisi user
//   String loginStatus = 'Manager'; 
//   var nav2 = ['Home', 'Furniture', 'Plants', if (loginStatus == 'Manager') 'Inventory']; // Jika loginStatus adalah 'Manager', tambahkan 'Inventory'

//   print(list); // Output: [1, 2, 3]
//   print(list2); // Output: [0, 1, 2, 3]
//   print(list3); // Output: [2, 2, 4, 1, 7, 6, 0, 0, 8, 1, 1, 2, 3]
//   print(list3.length); // Output: 13 (total elemen NIM dan list)
//   print(nav); // Output: ['Home', 'Furniture', 'Plants', 'Outlet'] karena promoActive = true
//   print(nav2); // Output: ['Home', 'Furniture', 'Plants', 'Inventory'] jika loginStatus == 'Manager'
// }

void main() {
  var list = [1, 2, 3];
  var nim = [2, 2, 4, 1, 7, 6, 0, 0, 8, 1]; 
  var list2 = [0, ...list]; // Menggunakan spread operator untuk menambahkan elemen dari list
  var list3 = [...nim, ...list]; // Menambahkan NIM dan elemen dari list menggunakan spread operator
  
  bool promoActive = true; // Deklarasikan promoActive
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet']; // Menggunakan conditional list
  
  // Cek beberapa kondisi untuk variabel loginStatus
  String loginStatus = 'Guest'; // Coba dengan nilai yang berbeda seperti 'Manager', 'Guest', atau 'Employee'
  var nav2 = [
    'Home', 
    'Furniture', 
    'Plants', 
    if (loginStatus == 'Manager') 'Inventory',
    if (loginStatus == 'Employee') 'Dashboard',
    if (loginStatus == 'Guest') 'Login'
  ];

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');

  print(list); // Output: [1, 2, 3]
  print(list2); // Output: [0, 1, 2, 3]
  print(list3); // Output: [2, 2, 4, 1, 7, 6, 0, 0, 8, 1, 1, 2, 3]
  print(list3.length); // Output: 13 (total elemen NIM dan list)
  print(nav); // Output: ['Home', 'Furniture', 'Plants', 'Outlet'] karena promoActive = true
  print(nav2); // Output tergantung loginStatus
  print(listOfStrings);
}
