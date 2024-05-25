import 'package:atividade_igor/database_helper.dart';
import 'package:flutter/material.dart';
import 'package:atividade_igor/class/tarefa.dart';
import 'package:atividade_igor/pages/07_TelaAdicionarTarefa.dart';
import 'package:atividade_igor/pages/08_TelaEditarTarefa.dart';

class TelaTask extends StatefulWidget {
  @override
  _TelaTaskState createState() => _TelaTaskState();
}

class _TelaTaskState extends State<TelaTask> {
  List<Tarefa> _tarefas = [];
  final dbHelper = DatabaseHelper();

  @override
  void initState() {
    super.initState();
    _carregarTarefas();
  }

  void _carregarTarefas() async {
    final tarefas = await dbHelper.listarTarefas();
    setState(() {
      _tarefas = tarefas;
    });
  }

  void _adicionarTarefa(Tarefa tarefa) async {
    await dbHelper.inserirTarefa(tarefa);
    _carregarTarefas();
  }

  void _editarTarefa(Tarefa tarefa, int index) async {
    await dbHelper.atualizarTarefa(tarefa);
    _carregarTarefas();
  }

  void _excluirTarefa(int id) async {
    await dbHelper.deletarTarefa(id);
    _carregarTarefas();
  }

  void _navegarParaAdicionarTarefa() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TelaAdicionarTarefa(
          onSalvar: _adicionarTarefa,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TASKHUB',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400,
            letterSpacing: 10,
            color: Color(0xfffdfdfd), // Cor do texto do AppBar
          ),
        ),
        backgroundColor: Color(0xff5614c0),
        elevation: 2,
      ),
      body: ListView.builder(
        itemCount: _tarefas.length,
        itemBuilder: (context, index) {
          final tarefa = _tarefas[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            elevation: 3,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: ListTile(
                title: Text(
                  tarefa.nome,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (tarefa.data != null)
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          'Data: ${tarefa.data!.day}/${tarefa.data!.month}/${tarefa.data!.year}',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                    if (tarefa.horaInicio != null)
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text(
                          'Hora de Início: ${tarefa.horaInicio!.hour}:${tarefa.horaInicio!.minute.toString().padLeft(2, '0')}',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                    if (tarefa.horaFim != null)
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text(
                          'Hora de Fim: ${tarefa.horaFim!.hour}:${tarefa.horaFim!.minute.toString().padLeft(2, '0')}',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                  ],
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TelaEditarTarefa(
                              tarefa: tarefa,
                              onSalvar: (tarefaEditada) => _editarTarefa(tarefaEditada, index),
                            ),
                          ),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () => _excluirTarefa(tarefa.id!),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _navegarParaAdicionarTarefa,
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: Color(0xff5614c0),
      ),
    );
  }
}
