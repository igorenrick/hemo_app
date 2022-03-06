import 'package:flutter/material.dart';
import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';

class GraphicCard extends StatefulWidget {
  final String name;
  final List<String> labelX;
  final List<String> labelY;
  final String tempInterna;
  final String tempExterna;
  final List<Feature> features;
  const GraphicCard({
    Key? key,
    required this.name,
    required this.labelX,
    required this.labelY,
    required this.tempInterna,
    required this.tempExterna,
    required this.features,
  }) : super(key: key);

  @override
  State<GraphicCard> createState() => _GraphicCardState();
}

class _GraphicCardState extends State<GraphicCard> {
  List<Feature> features = [];
  List<String> labelX = [];
  List<String> labelY = [];
  String tempInterna = '0';
  String tempExterna = '0';

  @override
  initState() {
    super.initState();
    labelX = widget.labelX;
    labelY = widget.labelY;
    tempInterna = widget.tempInterna;
    tempExterna = widget.tempExterna;
    features = widget.features;
  }

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
