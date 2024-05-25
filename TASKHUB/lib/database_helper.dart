import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:atividade_igor/class/tarefa.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;

  factory DatabaseHelper() {
    return _instance;
  }

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'tarefas.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE tarefas(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nome TEXT,
        data TEXT,
        horaInicio TEXT,
        horaFim TEXT
      )
    ''');
  }

  Future<void> inserirTarefa(Tarefa tarefa) async {
    final db = await database;
    await db.insert('tarefas', tarefa.toMap(), conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<List<Tarefa>> listarTarefas() async {
  final db = await database;
  final List<Map<String, dynamic>> maps = await db.query('tarefas');

  return List.generate(maps.length, (i) {
    return Tarefa.fromMap(maps[i]);
  });
}

  Future<void> atualizarTarefa(Tarefa tarefa) async {
    final db = await database;
    await db.update('tarefas', tarefa.toMap(), where: 'id = ?', whereArgs: [tarefa.id]);
  }

  Future<void> deletarTarefa(int id) async {
    final db = await database;
    await db.delete('tarefas', where: 'id = ?', whereArgs: [id]);
  }
}
