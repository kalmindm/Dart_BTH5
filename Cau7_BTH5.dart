import 'dart:io';

void main() {
  File file = File("Students.csv");
  file.writeAsStringSync('Name, Age, Address');
  for (int i = 0; i < 3; i++) {
    stdout.write("Enter name of the student ${i + 1}: ");
    String? name = stdin.readLineSync();
    stdout.write("Enter age of the student ${i + 1}: ");
    String? age = stdin.readLineSync();
    stdout.write("Enter address of the student ${i + 1}: ");
    String? address = stdin.readLineSync();
    file.writeAsStringSync('$name,$age,$address', mode: FileMode.append);
    print("Congratulation! CSV file written successfully.");
  }
}
