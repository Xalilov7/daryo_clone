import 'package:daryo_clone/screens/drawear/drawer.dart';
import 'package:flutter/material.dart';
import 'latest_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Daryo"),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(child: Text("So'ngi Yangiliklar")),
              Tab(child: Text("Asosiy Yangiliklar")),
              Tab(child: Text("Eng Ko'p")),

            ],
          ),
        ),
        body: TabBarView(
          children: [
            const LatestPage(),
            Container(color: Colors.yellow),
            Container(color: Colors.blue),
          ],
        ),
        drawer: MyDrawer(),
      ),
    ) ;
  }
}
