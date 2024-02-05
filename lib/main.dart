import 'package:acad_affairs_iitpkd/screens/about_me.dart';
import 'package:acad_affairs_iitpkd/screens/courses.dart';
import 'package:acad_affairs_iitpkd/screens/home.dart';
import 'package:acad_affairs_iitpkd/screens/jobs.dart';
import 'package:acad_affairs_iitpkd/screens/news.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'acad_affairs_iitpkd',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPageIndex = 0;

  final Map<int, Widget> bodyWidgets = {
    0: HomeScreen(),
    1: Courses(),
    2: News(),
    3: Jobs(),
    4: AboutMe(),
  };

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Academic Affairs"),
        ),
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          indicatorColor: Colors.amber,
          selectedIndex: currentPageIndex,
          destinations: const <Widget>[
            NavigationDestination(
              selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.auto_stories),
              label: 'Courses',
            ),
            NavigationDestination(
              icon: Icon(Icons.article),
              label: 'News',
            ),
            NavigationDestination(
              icon: Icon(Icons.cases_rounded),
              label: 'Jobs',
            ),
            NavigationDestination(
              icon: Icon(Icons.person),
              label: 'Dev',
            ),
          ],
        ),
        body: bodyWidgets[currentPageIndex],
      ),
    );
  }
}
