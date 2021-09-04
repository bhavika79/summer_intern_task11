import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class audi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album),
            title: Text('Audi A4'),
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
                      MaterialPageRoute(builder: (context) => audipage()));
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
class audipage extends StatelessWidget {
  String url = 'https://www.audi.in/in/web/en.html';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Audi A4'),
        ),
        body: ListView(children: [
          Image.asset(
            'assets/images/image2.jpg',
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
                          'Audi A4',
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
                'The Audi A4 has 1 Petrol Engine on offer. The Petrol engine is 1998 cc . It is available with the Automatic transmission. Depending upon the variant and fuel type the A4 has a mileage of 17.42 kmpl. The A4 is a 5 seater and has length of 4762mm, width of 1847mm and a wheelbase of 2819mm.'),
          ),
          ElevatedButton(
            onPressed: () {
              launch(url);
            },
            child: Text('Click for more information'),
          ),
          //Reviewscard(),
        ]));
  }
}
