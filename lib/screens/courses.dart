import 'package:flutter/material.dart';

class Courses extends StatefulWidget {
  const Courses({Key? key}) : super(key: key);

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  final TextEditingController _searchController = TextEditingController();

  // Sample course data
  final List<CourseItem> courseItems = [
    CourseItem(
      name: 'Course 1',
      link: 'feedback + resources',
    ),
    CourseItem(
      name: 'Course 2',
      link: 'feedback + resources',
    ),
    CourseItem(
      name: 'Course 3',
      link: 'feedback + resources',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          TextField(
            controller: _searchController,
            decoration: InputDecoration(
              labelText: 'Search',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
            ),
            onChanged: (value) {
              // Handle search logic here
            },
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: courseItems.length,
              itemBuilder: (context, index) {
                final courseItem = courseItems[index];
                return Card(
                  child: ListTile(
                    title: Text(courseItem.name),
                    subtitle: Text('${courseItem.link}'),
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

class CourseItem {
  final String name;
  final String link;

  CourseItem({
    required this.name,
    required this.link,
  });
}
