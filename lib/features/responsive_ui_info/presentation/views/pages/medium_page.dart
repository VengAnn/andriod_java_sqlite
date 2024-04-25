import 'package:flutter/material.dart';

class MediumPage extends StatelessWidget {
  const MediumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0,
        title: const Text('Medium Size Screen'),
      ),
      drawer: const Drawer(
        child: Column(
          children: [
            DrawerHeader(child: Icon(Icons.favorite, size: 45)),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
            ),
          ],
        ),
      ),
      //body
      body: Column(
        children: [
          // sized box for GridView
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.26,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                childAspectRatio: 0.35,
                maxCrossAxisExtent: 200,
              ),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.grey[500],
                  ),
                );
              },
            ),
          ),
          // sized Box for listView
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.54,
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    top: 8.0,
                    left: 8.0,
                    bottom: 6.0,
                    right: 8.0,
                  ),
                  child: Container(
                    height: 70,
                    color: Colors.amber,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
