import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return const Card(
      shadowColor: Colors.transparent,
      margin: EdgeInsets.all(8.0),
      child: SizedBox.expand(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 60,
            ),
            Text(
              "PLANNED FEATURES",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Flexible(
                  child: Text(
                    "\u2022 Course feedback section, here we can find the feed back of the people who took the course in the past.",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Flexible(
                  child: Text(
                    "\u2022 News, here we can find the links to the news articles published in new papers about our institute community & also links to any of their research publications.",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Flexible(
                  child: Text(
                    "\u2022 Off campus job updates, here we can get notifications about off campus opportunities.",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: SizedBox(),
            ),
            Text(
              "This application is just the design of an idea",
              style: TextStyle(
                fontSize: 13,
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
