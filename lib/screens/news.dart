import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  final TextEditingController _searchController = TextEditingController();

  // Sample news data
  final List<NewsItem> newsItems = [
    NewsItem(
      headline: 'Indo-Norway workshop',
      link:
          'https://www.thehindu.com/news/national/kerala/iit-holds-indo-norway-workshop/article67879249.ece',
    ),
    NewsItem(
      headline:
          'IIT Palakkad Researchers Generate Electricity From Human Urine',
      link:
          'https://www.etvbharat.com/en/!technology/iit-palakkad-researchers-generate-electricity-from-human-urine-enn24021504388',
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
              itemCount: newsItems.length,
              itemBuilder: (context, index) {
                final newsItem = newsItems[index];
                return Card(
                  child: ListTile(
                    title: Text(newsItem.headline),
                    subtitle: InkWell(
                      child: Text(
                        'Link',
                        style: TextStyle(color: Colors.blue),
                      ),
                      onTap: () => launch(newsItem.link),
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

class NewsItem {
  final String headline;
  final String link;

  NewsItem({
    required this.headline,
    required this.link,
  });
}
