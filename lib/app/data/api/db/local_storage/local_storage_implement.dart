// import 'dart:io';

// import 'package:path_provider/path_provider.dart';

// class LocalStorageImplement {
//   static Future<String> get _localPath async {
//     final directory = await getApplicationDocumentsDirectory();

//     return directory.path;
//   }

//   static Future<File> get _localFile async {
//     final path = await _localPath;
//     return File('$path/db.txt');
//   }

//   static Future<File> write(String jsonDataString) async {
//     final file = await _localFile;

//     // Write the file
//     return file.writeAsString('$jsonDataString');
//   }

//   static Future<int> read() async {
//     try {
//       final file = await _localFile;

//       // Read the file
//       final contents = await file.readAsString();

//       return int.parse(contents);
//     } catch (e) {
//       // If encountering an error, return 0
//       return 0;
//     }
//   }
// }
