import 'package:acad_affairs_iitpkd/provider/main.dart';
import 'package:acad_affairs_iitpkd/screens/courses.dart';
import 'package:acad_affairs_iitpkd/screens/guides.dart';
import 'package:acad_affairs_iitpkd/screens/home.dart';
import 'package:acad_affairs_iitpkd/screens/jobs.dart';
import 'package:acad_affairs_iitpkd/screens/news.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'constants.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Global(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'acad_affairs_iitpkd',
      theme: ThemeData.light(),
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
  final Map<int, Widget> bodyWidgets = {
    0: HomeScreen(),
    1: Jobs(),
    2: Courses(),
    3: Guides(),
    4: News(),
  };

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: cyan300,
          centerTitle: true,
          title: const Text(
            "Academic Affairs",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          actions: const [
            Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            SizedBox(width: 10),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: const Alignment(1, 0),
              end: const Alignment(0, 1),
              colors: [
                cyan300,
                blueA200,
              ],
            ),
          ),
          child: bodyWidgets[
              Provider.of<Global>(context, listen: true).currentPageIndex],
        ),
        bottomNavigationBar: NavigationBar(
          backgroundColor: cyan300,
          onDestinationSelected: (int index) {
            setState(() {
              Provider.of<Global>(context, listen: false).setIndex(index);
            });
          },
          indicatorColor: Colors.amber,
          selectedIndex:
              Provider.of<Global>(context, listen: true).currentPageIndex,
          destinations: const <Widget>[
            NavigationDestination(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.cases_rounded,
                color: Colors.white,
              ),
              label: 'Off-campus',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.account_balance,
                color: Colors.white,
              ),
              label: 'Courses',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.auto_stories,
                color: Colors.white,
              ),
              label: 'Guides',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.article,
                color: Colors.white,
              ),
              label: 'News',
            ),
          ],
        ),
      ),
    );
  }
}
