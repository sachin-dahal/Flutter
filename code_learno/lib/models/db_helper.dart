import 'dart:io';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseHelper {
  //database name and version
  static final _databaseName = "lessons.db";
  static final _databseVersion = 1;

  // database table name
  static final table = 'lesson_table';

//database column name
  static final columnID = 'id';
  static final columnTitle = 'title';
  static final columnDetails = 'details';
  static final columnImageUrl = 'image';

// instance of a database
  static Database _database;

  // creating a singeleton constructor
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper dbHelper = DatabaseHelper._privateConstructor();

  Future<Database> get database async {
    if (_database != null) {
      return _database;
    } else {
      _database = await _initDatabase();
      return _database;
    }
  }

  _initDatabase() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();

    final path = join(documentDirectory.path, _databaseName);
  }
}
