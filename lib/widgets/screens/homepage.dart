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
        children: const [
          GraphicCard(name: 'Geladeira 1 PSF Jardim das Avenidas'),
          GraphicCard(name: 'Geladeira 2 PSF Jardim das Avenidas'),
        ],
      ),
    );
  }
}
