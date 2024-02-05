import 'package:flutter/material.dart';

class Jobs extends StatefulWidget {
  const Jobs({super.key});

  @override
  State<Jobs> createState() => _JobsState();
}

class _JobsState extends State<Jobs> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
              final String item = 'job $index';
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
              leading: Icon(Icons.build),
              title: Text('Company A'),
              subtitle: Text('abc role, link:dummy'),
            ),
          ),
          const Card(
            child: ListTile(
              leading: Icon(Icons.build),
              title: Text('Company B'),
              subtitle: Text('abc role, link:dummy'),
            ),
          ),
          const Card(
            child: ListTile(
              leading: Icon(Icons.build),
              title: Text('Company C'),
              subtitle: Text('abc role, link:dummy'),
            ),
          ),
          const Card(
            child: ListTile(
              leading: Icon(Icons.build),
              title: Text('Company D'),
              subtitle: Text('abc role, link:dummy'),
            ),
          ),
          const Card(
            child: ListTile(
              leading: Icon(Icons.build),
              title: Text('Company E'),
              subtitle: Text('abc role, link:dummy'),
            ),
          ),
        ],
      ),
    );
  }
}
