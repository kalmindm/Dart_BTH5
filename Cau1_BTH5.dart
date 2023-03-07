import 'dart:io';

void main() {
  File file = File('hello.txt');
  IOSink sink = file.openWrite(mode: FileMode.append);
  sink.write('Manh');
  sink.writeln();
  sink.close();
}
