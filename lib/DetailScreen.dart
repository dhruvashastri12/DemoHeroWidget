import 'package:flutter/material.dart';
import 'ContactPOJO.dart';

class DetailScreen extends StatefulWidget {
  ContactPOJO _contactPOJOObj;

  DetailScreen(ContactPOJO contactPOJOObj) {
    _contactPOJOObj = contactPOJOObj;
  }

  @override
  _MyDetailPageState createState() => _MyDetailPageState(_contactPOJOObj);
}

class _MyDetailPageState extends State<DetailScreen> {
  ContactPOJO contactPOJOObj;

  _MyDetailPageState(ContactPOJO contactPOJOObj) {
    this.contactPOJOObj = contactPOJOObj;
    print(contactPOJOObj.contactName);
  }

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: 'heroimage', // For Method 1
                
                // tag: contactPOJOObj, // For Method 2
                child: CircleAvatar(
                  radius: 70.0,
                  backgroundColor: Colors.black,
                  child: contactPOJOObj.flutterLogo,


                  // child: Image.network('https://picsum.photos/250?image=9'),
                  // backgroundImage: AssetImage('images/profile_vector.png'),
                ),
              ),
              SizedBox(height: 15.0,),
              Text(
                contactPOJOObj.contactName,
                style: TextStyle(
                    fontSize: 40.0,
                    fontFamily: 'font_Pacifico',
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),
              Text(
                'Flutter Learner',
                style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'font_Source_sans_pro',
                    color: Colors.teal.shade200,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(15.0),
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.phone, color: Colors.teal),
                    SizedBox(
                      width: 30.0,
                    ),
                    Text(
                      contactPOJOObj.contactPhone,
                      style: TextStyle(
                          color: Colors.teal.shade900,
                          fontSize: 20.0,
                          fontFamily: 'font_Source_sans_pro'),
                    )
                  ],
                ),
              ),
              Card(
                // color: Colors.white,  # can keep this commented as card comes with white color by default
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: ListTile(
                    leading: Icon(Icons.email, color: Colors.teal),
                    title: Text(
                      contactPOJOObj.contactEmail,
                      style: TextStyle(
                          color: Colors.teal.shade900,
                          fontSize: 20.0,
                          fontFamily: 'font_Source_sans_pro'),
                    )),
              )
            ],
          ))),
    );
  }
}
