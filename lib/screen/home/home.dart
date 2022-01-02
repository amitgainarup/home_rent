import 'package:flutter/material.dart';
import 'package:home_rent/screen/home/widget/best_offer.dart';
import 'package:home_rent/screen/home/widget/categories.dart';
import 'package:home_rent/screen/home/widget/custom_bottom_navigation_bar.dart';
import 'package:home_rent/screen/home/widget/recommended_house.dart';
import 'package:home_rent/screen/home/widget/search_input.dart';
import 'package:home_rent/screen/home/widget/welcome_text.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Color(0xFF09182D),
        title: Center(
          child: Text(
            'House Rent',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Color(0xFF09182D),
        child: GestureDetector(
          onTap: () {},
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.cyan),
                accountName: Text('Amit Gain'),
                accountEmail: Text('Amitgain417@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://pixel-vault.s3-accelerate.amazonaws.com/6176cb30236cff00164c592f/6176cbd6236cff00164c5936_o.jpg'),
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.home,
                  color: Colors.pink,
                ),
                title: const Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.person,
                  color: Colors.pink,
                ),
                title: const Text(
                  'Profile',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.map,
                  color: Colors.pink,
                ),
                title: const Text(
                  'Location',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),
              SizedBox(
                height: 10,
                child: Card(
                  color: Colors.white10,
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.bookmark,
                  color: Colors.pink,
                ),
                title: const Text(
                  'Bookmark',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.notifications,
                  color: Colors.pink,
                ),
                title: const Text(
                  'Notification',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.message,
                  color: Colors.pink,
                ),
                title: const Text(
                  'Message',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),
               SizedBox(
                height: 10,
                child: Card(
                  color: Colors.white10,
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.settings,
                  color: Colors.pink,
                ),
                title: const Text(
                  'Setting',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.help,
                  color: Colors.pink,
                ),
                title: const Text(
                  'Help',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.logout,
                  color: Colors.pink,
                ),
                title: const Text(
                  'Logout',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WelcomeText(),
            SearchInput(),
            Categories(),
            RecommendedHouse(),
            BestOffer()
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
