import 'package:flutter/material.dart';
class Tarefa {
  int? id;
  final String nome;
  final DateTime? data;
  final TimeOfDay? horaInicio;
  final TimeOfDay? horaFim;

  Tarefa({
    this.id,
    required this.nome,
    this.data,
    this.horaInicio,
    this.horaFim,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'data': data?.toIso8601String(),
      'horaInicio': horaInicio != null ? '${horaInicio!.hour}:${horaInicio!.minute}' : null,
      'horaFim': horaFim != null ? '${horaFim!.hour}:${horaFim!.minute}' : null,
    };
  }

  factory Tarefa.fromMap(Map<String, dynamic> map) {
    return Tarefa(
      id: map['id'],
      nome: map['nome'],
      data: map['data'] != null ? DateTime.parse(map['data']) : null,
      horaInicio: map['horaInicio'] != null ? TimeOfDay(
        hour: int.parse(map['horaInicio'].split(':')[0]),
        minute: int.parse(map['horaInicio'].split(':')[1]),
      ) : null,
      horaFim: map['horaFim'] != null ? TimeOfDay(
        hour: int.parse(map['horaFim'].split(':')[0]),
        minute: int.parse(map['horaFim'].split(':')[1]),
      ) : null,
    );
  }
}
