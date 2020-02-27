import 'package:flutter/material.dart';
import 'DetailScreen.dart';
import 'ContactPOJO.dart';

void main() => runApp(HeroApp());

class HeroApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transition Demo',
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.teal,
      body: ListTileInCard(),
    );
  }
}

// class ContactList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: <Widget>[
//         ListTileInCard(),
//         ListTileInCard(),
//         ListTileInCard(),
//       ],
//     );
//   }
// }

class ListTileInCard extends StatelessWidget {
  ContactPOJO objContactPojo;

  final List<ContactPOJO> contacts = [
    ContactPOJO(Image.network('https://c7.uihere.com/files/14/608/897/spider-man-logo-superhero-clip-art-spiderman-face-clipart.jpg'), "Catherine Hill",
        "(555)555-5555", "catherineh@wupc.com"),
    ContactPOJO(Image.network('https://pngimage.net/wp-content/uploads/2018/05/batman-face-png-5.png'), "Catherine Hill",
        "(555)555-5555", "catherineh@wupc.com"),
    ContactPOJO(Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQz55kOhLKqg32d0Xrypa1yN98jYpuD0AadOrAhPDktFItI0heS'), "Jasmine Smith",
        "(555)555-5555", "jasmines@wupc.com"),
    ContactPOJO(Image.network('https://img.favpng.com/6/18/6/head-neck-jaw-face-png-favpng-VFQVjkdFLZag1VL6VSngGpuFf.jpg'), "Joy Miller",
        "(555)555-5555", "joym@wupc.com"),
    ContactPOJO(Image.network('https://i.pinimg.com/originals/fb/af/86/fbaf86c92f69d9944e453aaea431357b.jpg'), "Kathy Davis",
        "(555)555-5555", "kathyd@wupc.com"),
    // ContactPOJO(FlutterLogo(size: 40, colors: Colors.pink), "Maria Trevino",
    //     "(555)555-5555", "mariat@wupc.com"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: contacts.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: ListTile(
              leading: Hero(
                tag: contacts[index],
                child: CircleAvatar(
                    radius: 35.0,
                    backgroundColor: Colors.black,
                    child: contacts[index].flutterLogo),
              ),
              title: Text(contacts[index].contactName),
              subtitle: Text(contacts[index].contactEmail),
              trailing: Icon(Icons.more_vert),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return DetailScreen(contacts[index]);
                }));
              },
            ),
          ),
        );
      },
    );
  }
}
