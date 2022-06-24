import 'package:flutter/material.dart';

class WidgetCustomBodyResult extends StatelessWidget {
  final String titulo;
  final String valor;
  const WidgetCustomBodyResult({Key key, this.titulo, this.valor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  titulo,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              Text(
                valor,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.grey,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 05,
          ),
          Container(
            height: 04,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
