import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(  // Alinha o container no centro da tela
        child: Container(
          padding: const EdgeInsets.all(16.0),  // Espaçamento interno de 16px
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent,  // Fundo azul claro
            borderRadius: BorderRadius.circular(10),  // Bordas arredondadas
          ),
          child: const Text(
            'Este é um container estilizado',
            style: TextStyle(fontSize: 18, color: Colors.white),  // Texto com estilo
          ),
        ),
      ),
    );
  }
}
