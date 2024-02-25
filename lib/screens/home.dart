import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key})
      : super(key: key); // Added missing 'Key?' type for the key parameter

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Card(
      shadowColor: Colors.transparent,
      margin: EdgeInsets.all(8.0),
      child: SizedBox.expand(
        child: ListView(
          children: const <Widget>[
            SizedBox(height: 60),
            Center(
              child: Text(
                "PLANNED FEATURES",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "\u2022 OFF-CAMPUS OPPORTUNITIES", // Feature: Off-Campus Opportunities
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Problem: Graduating students often spend significant time scouring numerous websites for off-campus opportunities.",
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Solution: We'll send quick notifications with direct apply links for good off-campus opportunities.",
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "\u2022 COURSE FEEDBACK SECTION", // Feature: Course Feedback Section
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Problem: To decide what courses to select we contact a lot of seniors for suggestions & resources",
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Solution: Curate and maintain a database of student feedback and resources, including YouTube playlists, websites, etc., to assist current and future students in their academic pursuits.",
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "\u2022 NEWS SECTION", // Feature: News Section
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Problem: News related to institutional achievements is either shared via mail or institute related websites which is not an efficient way to reach more people",
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Solution: Aggregate news articles featuring institutional achievements and research publications in this app to foster a sense of institutional pride and awareness.",
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                "This application is just the design of an idea",
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
