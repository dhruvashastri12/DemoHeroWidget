import 'package:flutter/material.dart';
import 'DetailScreen.dart';
import 'ContactPOJO.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class SingleCardListview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    timeDilation = 10.0;
    return Scaffold(
      backgroundColor: Colors.teal,
      body: ContactList(),
    );
  }
}

class ContactList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTileInCard(),
        // ListTileInCard(), // Enable this to showcase same name tag error for Method 1
      ],
    );
  }
}

class ListTileInCard extends StatelessWidget {
  ContactPOJO objContactPojo;

  final List<ContactPOJO> contacts = [
    ContactPOJO(Image.network('https://c7.uihere.com/files/14/608/897/spider-man-logo-superhero-clip-art-spiderman-face-clipart.jpg'), "Catherine Hill",
        "(555)555-5555", "catherineh@wupc.com"),
    ContactPOJO(Image.network('https://pngimage.net/wp-content/uploads/2018/05/batman-face-png-5.png'), "Catherine Hill",
        "(555)555-5555", "catherineh@wupc.com"),
    ContactPOJO(Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQz55kOhLKqg32d0Xrypa1yN98jYpuD0AadOrAhPDktFItI0heS'), "Jasmine Smith",
        "(555)555-5555", "jasmines@wupc.com"),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: ListTile(
              leading: Hero(
                tag: 'heroimage',
                child: CircleAvatar(
                    radius: 35.0,
                    backgroundColor: Colors.black,
                    child: contacts[0].flutterLogo),
              ),
              title: Text(contacts[0].contactName),
              subtitle: Text(contacts[0].contactEmail),
              trailing: Icon(Icons.more_vert),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return DetailScreen(contacts[0]);
                }));
              },
            ),
          ),
        );
  }
}
