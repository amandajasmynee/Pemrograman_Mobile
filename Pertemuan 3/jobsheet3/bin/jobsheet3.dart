import 'package:jobsheet3/jobsheet3.dart' as jobsheet3;

// Praktikum 1
// void main() {
//   String test = "test2";
//   if (test == "test1") {
//     print("Test1");
//   } else if (test == "test2") {
//     print("Test2");
//   } else {
//     print("Something else");
//   }

//   if (test == "test2") print("Test2 again");

//     bool test1 = true;
//   if (test1) {
//     print("Kebenaran");
// }
// }

//  Praktikum 2
// void main() {
//   int counter = 0; // Inisialisasi counter

// while (counter < 33) {
// print(counter);
//  counter++;

//   do {
//   print(counter);
//   counter++;
// } while (counter < 77);
// }
// }

// Praktikum 3
void main() {
  for (int index = 10; index < 27; index++) {
    if (index == 21) {
      break; // Hentikan loop ketika index sama dengan 21
    } else if (index > 1 && index < 7) {
      continue; // Lewatkan iterasi untuk kondisi ini
    }
    print(index); // Cetak nilai index yang lolos dari kondisi if-else
  }
}
