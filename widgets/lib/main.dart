import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
           
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               
                Container(
                  padding: const EdgeInsets.only(bottom: 7),
                  child: Text(
                    'Desarrollo de Sistemas Web',
                    style: TextStyle(fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Sistemas, Licenciatura, UDG',
                  style: TextStyle(
                    color: Color.fromARGB(255, 53, 16, 218),
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Color.fromARGB(255, 216, 244, 54),
          ),
          Text('7'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'Llamar'),
          _buildButtonColumn(color, Icons.share, 'Compartir'),
           _buildButtonColumn(color, Icons.message, 'Escribir'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'La licenciatura en Desarrollo de Sistemas Web forma expertos en' 
        'generar aplicaciones, servicios y sitios web, dispositivos inteligentes' 
         'y productos y servicios a través de internet.',    
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Desarrollo de Sistemas Web',
      home: Scaffold(
        appBar: AppBar(
          title: Text('UDG Virtual'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/desarrollo.png',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}