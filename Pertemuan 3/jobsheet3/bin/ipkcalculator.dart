import 'dart:io';

void main() {
  int jumlahSemester, jumlahMK;
  List<List<int>> sks = [];
  List<List<String>> nilaiHuruf = [];
  List<List<String>> mataKuliah = [];
  List<int> totalSksPerSemester = [];
  List<double> nr = [];
  int totalSks = 0;
  double totalNR = 0, ipk;

  print("==============================================");
  print("\tProgram Menghitung IPK Mahasiswa");
  print("==============================================");

  // Input jumlah semester
  stdout.write("Masukkan jumlah semester: ");
  jumlahSemester = int.parse(stdin.readLineSync()!);

  if (jumlahSemester < 2 || jumlahSemester > 14) {
    print("Jumlah semester salah!");
    return;
  }

  // Loop untuk setiap semester
  for (int i = 0; i < jumlahSemester; i++) {
    int jumlahNilai = 0;
    int jumlahSks = 0;

    stdout.write("Masukkan jumlah mata kuliah semester ${i + 1}: ");
    jumlahMK = int.parse(stdin.readLineSync()!);

    if (jumlahMK < 2) {
      print("Jumlah matakuliah kurang dari 2 setiap semester.");
      return;
    }

    // Buat list sementara untuk SKS, Nilai, dan Mata Kuliah tiap semester
    List<int> sksPerMK = [];
    List<String> nilaiHurufPerMK = [];
    List<String> mataKuliahPerMK = [];

    for (int j = 0; j < jumlahMK; j++) {
      stdout.write("Masukkan nama mata kuliah ke-${j + 1}: ");
      mataKuliahPerMK.add(stdin.readLineSync()!);

      stdout.write("Masukkan jumlah SKS matkul: ");
      sksPerMK.add(int.parse(stdin.readLineSync()!));

      stdout.write("Masukkan nilai matkul (A/B/C/D/E): ");
      nilaiHurufPerMK.add(stdin.readLineSync()!);

      // Hitung nilai berdasarkan huruf
      int nilai;
      switch (nilaiHurufPerMK[j].toUpperCase()) {
        case 'A':
          nilai = 4 * sksPerMK[j];
          break;
        case 'B':
          nilai = 3 * sksPerMK[j];
          break;
        case 'C':
          nilai = 2 * sksPerMK[j];
          break;
        case 'D':
          nilai = 1 * sksPerMK[j];
          break;
        case 'E':
          nilai = 0 * sksPerMK[j];
          break;
        default:
          print("Input nilai salah!");
          return;
      }

      jumlahNilai += nilai;
      jumlahSks += sksPerMK[j];
    }

    if (jumlahSks > 24) {
      print("Jumlah SKS semester lebih dari 24.");
      return;
    } else {
      sks.add(sksPerMK);
      nilaiHuruf.add(nilaiHurufPerMK);
      mataKuliah.add(mataKuliahPerMK);
      totalSksPerSemester.add(jumlahSks);
      nr.add(jumlahNilai / jumlahSks);
    }
  }

  // Output transkrip nilai
  print("==============================================");
  print("\t\tTranskrip Nilai");
  print("==============================================");

  for (int i = 0; i < jumlahSemester; i++) {
    print("\nHasil Semester ${i + 1}:");
    print("\n${'Mata Kuliah'.padRight(20)} ${'SKS'.padRight(10)} ${'Nilai'}");

    for (int j = 0; j < sks[i].length; j++) {
      print("${mataKuliah[i][j].padRight(20)} ${sks[i][j].toString().padRight(10)} ${nilaiHuruf[i][j]}");
    }

    print("\nTotal SKS: ${totalSksPerSemester[i]}");
    print("NR: ${nr[i].toStringAsFixed(2)}");
    totalSks += totalSksPerSemester[i];
    totalNR += nr[i];
    print("--------------------------------------------");
  }

  // Hitung IPK
  ipk = totalNR / jumlahSemester;
  print("\nTotal SKS: $totalSks");
  print("IPK: ${ipk.toStringAsFixed(2)}");
  print("==============================================");
}
