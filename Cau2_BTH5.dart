import 'dart:io';

void main() {
  var file = File('hello.txt').openWrite(mode: FileMode.append);
  stdout.write('Enter your friend\'s name: ');
  var friendName = stdin.readLineSync()!;
  file.writeln(friendName);
  file.close();
  print('Friend\'s name added to file.');
}
//Cach2
// void main() {
//   String fileName = "hello.txt";
//   // Check if the file already exists
//   if (!File(fileName).existsSync()) {
//     // If the file does not exist, create a new one
//     File(fileName).createSync();
//   }
//   // Open the file for writing and append mode
//   IOSink fileSink = File(fileName).openWrite(mode: FileMode.append);
//   // Write your friends' names to the file
//   List<String> friends = ["Alice", "Bob", "Charlie"];
//   for (String friend in friends) {
//     fileSink.writeln(friend);
//   }
//   // Close the file
//   fileSink.close();
//   print("Successfully appended friends' names to $fileName");
// }
