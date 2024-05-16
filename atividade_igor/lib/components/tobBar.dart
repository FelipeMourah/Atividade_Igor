import 'package:flutter/material.dart';

Container topBar(double largura){
  return Container(
height: 90,
    width: largura,
    decoration: BoxDecoration(
      color: Colors.lightGreenAccent,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.05), 
          spreadRadius: 2, 
          blurRadius: 3, 
          offset: const Offset(0, 3), 
        ),
      ],
      border: Border.all(width: 0.5),
    ),
  );
}