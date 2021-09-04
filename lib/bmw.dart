import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class bmw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album),
            title: Text('BMW Series 8 M8'),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              const SizedBox(width: 8),
              TextButton(
                child: const Text(
                  'Click for more',
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => bmwpage()));
                },
              ),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class bmwpage extends StatelessWidget {
  String url = 'https://www.bmw.in/en/index.html';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('BMW'),
          backgroundColor: Color.fromRGBO(268, 218, 0, 0),
        ),
        body: ListView(children: [
          Image.asset(
            'assets/images/image1.jpg',
            width: 600,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.all(32),
            child: Row(
              children: [
                Expanded(
                  /*1*/
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /*2*/
                      Container(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: const Text(
                          'BMW Series 8 M8',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                /*3*/
                Icon(
                  Icons.star,
                  color: Colors.red[500],
                ),
                const Text('41'),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(32),
            child: Text(
                'Model: BMW Series 8 Horsepower: 441 kW \nFuel economy: 7 km/l\ncombined Engine: 4.4 L V8\nCurb weight: 1,955 kg \nFuel tank capacity: 68 L \nTransmission: 8-speed automatic \nWheel size: Front 19″ diameter, 9.5″  width; rear 19″ diameter, 10.5″ width'),
          ),
          ElevatedButton(
            onPressed: () {
              launch(url);
            },
            child: Text('Click for more information'),
          ),
         
        ]));
  }
}
