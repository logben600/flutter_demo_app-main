import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget {
  const GridViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo de GridView'),
      ),
      body: GridView.count(
        crossAxisCount: 2, // 2 colunas para manter uma proporção visual adequada
        crossAxisSpacing: 8, // Espaçamento entre colunas
        mainAxisSpacing: 8, // Espaçamento entre linhas
        padding: const EdgeInsets.all(16), // Margem ao redor da grade
        children: [
          _buildGridItem('Vermelho', Colors.red),
          _buildGridItem('Azul', Colors.blue),
          _buildGridItem('Verde', Colors.green),
          _buildGridItem('Amarelo', Colors.yellow),
        ],
      ),
    );
  }

  // Função para criar cada quadrado com cor e texto
  Widget _buildGridItem(String text, Color color) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8), // Bordas arredondadas opcionais
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white, // Texto branco para melhor contraste
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
