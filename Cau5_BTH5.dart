import 'dart:io';

void main() {
  String directory = Directory.current.path;
  for (int i = 1; i <= 100; i++) {
    File file = File('$directory/file_$i.txt');
    file.createSync();
    file.writeAsStringSync('This is file number $i');
  }
  print('100 files created successfully!');
}
// import 'dart:io';

// void main() {
//   for (var i = 1; i <= 100; i++) {
//     var fileName = 'file_$i.txt';
//     var file = File(fileName);
//     file.createSync();
//     print('File $i created: $fileName');
//   }
// }
