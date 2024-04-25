import 'package:flutter/material.dart';

class LargePage extends StatelessWidget {
  const LargePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('Large Size Screen'),
      ),
      body: Row(
        // in this row have 3 section specific
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 0.2,
            child: const Column(
              children: [
                // section 1
                SizedBox(
                  height: 200,
                  child: Center(
                    child: Icon(Icons.favorite, size: 50),
                  ),
                ),
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
          // section 2
          SizedBox(
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 0.52,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 1,
                  child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        childAspectRatio: 1,
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
                      }),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.67,
                  width: double.infinity,
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            top: 8.0,
                            left: 4.0,
                            bottom: 6.0,
                            right: 4.0,
                          ),
                          child: Container(
                            height: 90,
                            color: Colors.amber,
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
          // section 3
          SizedBox(
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 0.27,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.64,
                    color: Colors.grey[500],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.21,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
