import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class mec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album),
            title: Text('Mercedes-Benz A-Class'),
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => mecpage()));
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
class mecpage extends StatelessWidget {
  String url = 'https://www.mercedes-benz.com/en/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Mercedes-Benz A-Class'),
        ),
        body: ListView(children: [
          Image.asset(
            'assets/images/image4.jpeg',
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
                          'Mercedes-Benz A-Class',
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
                'The Mercedes-Benz A-Class has 1 Diesel Engine and 1 Petrol Engine on offer. The Diesel engine is 2143 cc while the Petrol engine is 1595 cc . It is available with the Automatic transmission. Depending upon the variant and fuel type the A-Class has a mileage of 15.5 to 20.0 kmpl. The A-Class is a 5 seater and has length of 4299mm, width of 2022mm and a wheelbase of 2699mm.'),
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
