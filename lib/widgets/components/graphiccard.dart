import 'package:flutter/material.dart';
import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';

class GraphicCard extends StatefulWidget {
  final String name;
  const GraphicCard({Key? key, required this.name}) : super(key: key);

  @override
  State<GraphicCard> createState() => _GraphicCardState();
}

class _GraphicCardState extends State<GraphicCard> {
  List<Feature> features = [
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
  ];
  List<String> labelX = ['00h', '00h15', '00h30', '00h45', 'Agora'];
  List<String> labelY = ['5°', '10°', '15°', '20°', '25°', '30°', '35°'];
  String tempInterna = '15';
  String tempExterna = '30';

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(18, 9, 18, 9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 18, 36, 9),
            child: Text(
              widget.name,
              textAlign: TextAlign.start,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(12, 9, 12, 6),
            child: Text(
              'Agora:',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 6, 12, 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      tempInterna + '°C',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: Colors.teal[600],
                      ),
                    ),
                    Text(
                      'Temp. Interna',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      tempExterna + '°C',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: Colors.amber[600],
                      ),
                    ),
                    Text(
                      'Temp. Externa',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(12, 9, 12, 12),
            child: Text(
              'Histórico:',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 6, 0, 18),
            child: LineGraph(
              features: features,
              size: Size(
                MediaQuery.of(context).size.width - 72,
                250,
              ),
              labelX: labelX,
              labelY: labelY,
              showDescription: true,
              graphColor: Colors.grey.shade500,
              graphOpacity: 0.1,
            ),
          ),
          Center(
            child: Padding(
                padding: const EdgeInsets.fromLTRB(12, 6, 12, 18),
                child: OutlinedButton(
                  onPressed: () {
                    debugPrint('Received click');
                  },
                  child: const Text('Mais Informações'),
                )),
          ),
        ],
      ),
    );
  }
}
