import 'dart:io';

void main() {
  String currentDir = Directory.current.path;
  //Define the file paths
  String filePath = '$currentDir/hello.txt';
  String copyPath = '$currentDir/hello_copy.txt';
  //Open the files for reading and writting
  File file = File(filePath);
  File copy = File(copyPath);
  //Read the contents os the original file
  String contents = file.readAsStringSync();
  //Write the contents to the new file
  copy.writeAsStringSync(contents);
  //
  print('File copied successfully.');
}
