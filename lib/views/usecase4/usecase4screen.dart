import 'package:flutter/material.dart';

class Usecase4Screen extends StatefulWidget {
  @override
  _Usecase4ScreenState createState() => _Usecase4ScreenState();
}

class _Usecase4ScreenState extends State<Usecase4Screen> {
  Color? color = Colors.red[200];
  Color? iconColor = Colors.red[400];
  String image = 'assets/images/image1.jpg';
  int button = 1;
  IconData icon1 = Icons.settings;
  IconData icon2 = Icons.computer;
  IconData icon3 = Icons.warning;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Image(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
        actions: [Icon(Icons.location_on, color: color)],
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          DrawerHeader(
            child: Text(''),
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            ),
          ),
          ListTile(
            onTap: () {
              setState(() {
                color = Colors.red[200];
                iconColor = Colors.red[400];
                image = 'assets/images/image1.jpg';
                button = 1;
                icon1 = Icons.settings;
                icon2 = Icons.computer;
                icon3 = Icons.warning;
                Navigator.pop(context);
              });
            },
            title: Text('Button 1'),
            leading: Icon(Icons.code),
          ),
          ListTile(
            onTap: () {
              setState(() {
                color = Colors.yellow[200];
                iconColor = Colors.brown[400];
                image = 'assets/images/image2.jpg';
                button = 2;
                icon1 = Icons.contact_mail;
                icon2 = Icons.folder;
                icon3 = Icons.sort;
                Navigator.pop(context);
              });
            },
            title: Text('Button 2'),
            leading: Icon(Icons.palette),
          ),
          ListTile(
            onTap: () {
              setState(() {
                color = Colors.amber[200];
                iconColor = Colors.indigo[900];
                image = 'assets/images/image3.jpg';
                button = 3;
                icon1 = Icons.home;
                icon2 = Icons.headphones;
                icon3 = Icons.file_upload;
                Navigator.pop(context);
              });
            },
            title: Text('Button 3'),
            leading: Icon(Icons.wb_sunny),
          ),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: color,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                icon1,
                color: iconColor,
              ),
              label: 'b$button/t1'),
          BottomNavigationBarItem(
              icon: Icon(
                icon2,
                color: iconColor,
              ),
              label: 'b$button/t2'),
          BottomNavigationBarItem(
              icon: Icon(
                icon3,
                color: iconColor,
              ),
              label: 'b$button/t3'),
        ],
      ),
    );
  }
}
