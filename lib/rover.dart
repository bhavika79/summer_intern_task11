import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class rover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album),
            title: Text('Land Rover Range Rover'),
            subtitle: Text(''),
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
                          builder: (context) => roverpage()));
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
class roverpage extends StatelessWidget {
  String url = 'https://www.landrover.in/index.html';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Land Rover Range Rover'),
        ),
        body: ListView(children: [
          Image.asset(
            'assets/images/image3.jpg',
            width: 600,
            height: 240,
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
                          'Land Rover Range Rover',
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
                const Text('61'),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(32),
            child: Text(
                'The Land Rover Range Rover has 1 Diesel Engine and 1 Petrol Engine on offer. The Diesel engine is 2995 cc while the Petrol engine is 2995 cc . It is available with the Automatic transmission. Depending upon the variant and fuel type the Range Rover has a mileage of . The Range Rover is a 5 seater and has length of 5200 mm, width of 2220 mm and a wheelbase of 3120 mm.'),
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
