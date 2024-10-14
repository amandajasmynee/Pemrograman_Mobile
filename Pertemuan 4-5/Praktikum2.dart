void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  
  // Menambahkan satu elemen menggunakan .add()
  names1.add('Amanda Jasmyne');
  names1.add('2241760081');

  // Menambahkan beberapa elemen sekaligus menggunakan .addAll()
  names2.addAll(['Amanda J', '2241760081']);

  print(names1);
  print(names2);
}
