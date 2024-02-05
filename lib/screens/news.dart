import 'package:flutter/material.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
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
              final String item = 'news $index';
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
              title: Text('Headline'),
              subtitle: Text('link : dummy'),
            ),
          ),
          const Card(
            child: ListTile(
              title: Text('Headline'),
              subtitle: Text('link : dummy'),
            ),
          ),
          const Card(
            child: ListTile(
              title: Text('Headline'),
              subtitle: Text('link : dummy'),
            ),
          ),
          const Card(
            child: ListTile(
              title: Text('Headline'),
              subtitle: Text('link : dummy'),
            ),
          ),
          const Card(
            child: ListTile(
              title: Text('Headline'),
              subtitle: Text('link : dummy'),
            ),
          ),
        ],
      ),
    );
  }
}
