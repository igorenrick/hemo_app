import 'package:flutter/material.dart';

class AddModule extends StatelessWidget {
  const AddModule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ADICIONAR MÓDULO',
          style: TextStyle(
            fontFamily: 'Fredoka',
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const Text('ADD MODULE'),
    );
  }
}
