void main() {
  String nama = "Amanda Jasmyne";
  String nim = "2241760081";
  
  print("Bilangan Prima dari 0 sampai 201:");
  
  for (int i = 2; i <= 201; i++) {
    if (isPrima(i)) {
      print("$i adalah bilangan prima.");
      print("Nama: $nama, NIM: $nim\n");
    }
  }
}

bool isPrima(int num) {
  if (num < 2) return false;
  for (int i = 2; i <= num ~/ 2; i++) {
    if (num % i == 0) return false;
  }
  return true;
}
