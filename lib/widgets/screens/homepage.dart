import 'package:draw_graph/models/feature.dart';
import 'package:flutter/material.dart';
import 'package:hemo_app/widgets/components/graphiccard.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        title: const Text('HEMO APP'),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(0, 9, 0, 9),
        children: [
          GraphicCard(
            name: 'Geladeira 1 PSF Jardim das Avenidas',
            labelX: const ['00h', '00h15', '00h30', '00h45', 'Agora'],
            labelY: const ['5°', '10°', '15°', '20°', '25°', '30°', '35°'],
            tempExterna: '30',
            tempInterna: '8',
            features: [
              Feature(
                data: [0.35, 0.45, 0.28, 0.15, 0.2],
                color: Colors.teal.shade600,
                title: 'Temp. Interna (°C)',
              ),
              Feature(
                data: [0.8, 0.95, 1, 0.78, 0.88],
                color: Colors.amber.shade600,
                title: 'Temp. Externa (°C)',
              ),
            ],
          ),
          GraphicCard(
            name: 'Geladeira 2 PSF Jardim das Avenidas',
            labelX: const ['00h', '00h15', '00h30', '00h45', 'Agora'],
            labelY: const ['5°', '10°', '15°', '20°', '25°', '30°', '35°'],
            tempExterna: '33',
            tempInterna: '5',
            features: [
              Feature(
                data: [0.45, 0.32, 0.22, 0.25, 0.12],
                color: Colors.teal.shade600,
                title: 'Temp. Interna (°C)',
              ),
              Feature(
                data: [0.7, 0.98, 1.1, 0.68, 0.9],
                color: Colors.amber.shade600,
                title: 'Temp. Externa (°C)',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
