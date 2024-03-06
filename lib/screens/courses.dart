import 'package:acad_affairs_iitpkd/screens/course_screen.dart';
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
      name: 'DSA',
      links: [
        [
          "Academic Repository",
          "https://drive.google.com/drive/folders/1-WXPBX1FY0q7S-jC-VP1QRwCzAa338Ox?usp=sharing",
        ],
        [
          "Apni Kaksha",
          "https://youtube.com/playlist?list=PLfqMhTWNBTe0b2nM6JHVCnAkhQRGiZMSJ&si=j_5g1SazYp35Uy2L",
        ],
        [
          "Code With Harry",
          "https://youtube.com/playlist?list=PLu0W_9lII9ahIappRPN0MCAgtOu3lQjQi&si=KH5Kpe-kAeZzE3a7",
        ],
        [
          "GFG",
          "https://www.geeksforgeeks.org/complete-guide-to-dsa-for-beginners/?ref=ghm",
        ],
      ],
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
            decoration: const InputDecoration(
              labelText: 'Search',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
            ),
            onChanged: (value) {
              // Handle search logic here
            },
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: courseItems.length,
              itemBuilder: (context, index) {
                final courseItem = courseItems[index];
                return TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CourseScreen(
                          name: courseItems[index].name,
                          links: courseItems[index].links,
                        ),
                      ),
                    );
                  },
                  child: Card(
                    child: ListTile(
                      title: Text(courseItem.name),
                    ),
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
  final List<List<String>> links;

  CourseItem({
    required this.name,
    required this.links,
  });
}
