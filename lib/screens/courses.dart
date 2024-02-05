import 'package:flutter/material.dart';

class Courses extends StatefulWidget {
  const Courses({super.key});

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    bool isDark = false;

    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          SearchAnchor(builder: (context, controller) {
            return SearchBar(
              controller: controller,
              padding: const MaterialStatePropertyAll<EdgeInsets>(
                  EdgeInsets.symmetric(horizontal: 16.0)),
              onTap: () {
                controller.openView();
              },
              onChanged: (_) {
                controller.openView();
              },
              leading: const Icon(Icons.search),
            );
          }, suggestionsBuilder:
              (BuildContext context, SearchController controller) {
            return List<ListTile>.generate(5, (int index) {
              final String item = 'course $index';
              return ListTile(
                title: Text(item),
                onTap: () {
                  setState(() {
                    controller.closeView(item);
                  });
                },
              );
            });
          }),
          const SizedBox(
            height: 20,
          ),
          const Card(
            child: ListTile(
              title: Text('Course A'),
            ),
          ),
          const Card(
            child: ListTile(
              title: Text('Course B'),
            ),
          ),
          const Card(
            child: ListTile(
              title: Text('Course C'),
            ),
          ),
          const Card(
            child: ListTile(
              title: Text('Course D'),
            ),
          ),
          const Card(
            child: ListTile(
              title: Text('Course E'),
            ),
          ),
        ],
      ),
    );
  }
}
