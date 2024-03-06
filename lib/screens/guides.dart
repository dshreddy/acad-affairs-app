import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Guides extends StatefulWidget {
  const Guides({Key? key}) : super(key: key);

  @override
  State<Guides> createState() => _GuidesState();
}

class _GuidesState extends State<Guides> {
  final List<GuideListing> jobListings = [
    GuideListing(
      name: 'Internship Roadmap (IT)',
      link:
          'https://drive.google.com/file/d/1G1Go3NA7-pVEeJxQzHmZKQWtnfF7cgQR/view?usp=sharing',
    ),
    GuideListing(
      name: 'Interview preparation (IT)',
      link:
          'https://drive.google.com/file/d/12DI-vuw5eXvnapbc5BbKGVvz0NMT9i-7/view?usp=sharing',
    ),
    GuideListing(
      name: 'Research Internships Blue Book IIT M',
      link:
          'https://drive.google.com/file/d/11eUJaDishmKvGjGsFLwThbtGj8uP65Z2/view?usp=sharing',
    ),
    GuideListing(
      name: 'CSEA Intern Talk 2021',
      link:
          'https://drive.google.com/file/d/1RRD2Exq9_936lbuMYmyhm5cdAKQxvcn8/view?usp=sharing',
    ),
    GuideListing(
      name: 'C++',
      link: 'https://github.com/unniisme/cppBootcamp',
    ),
    GuideListing(
      name: 'Competitive Programming',
      link:
          'https://drive.google.com/file/d/14ajVOEjErtZswZtHErbzBRAQ_AYj3GnG/view?usp=sharing',
    ),
    GuideListing(
      name: 'GATE',
      link: 'coming soon',
    ),
    GuideListing(
      name: 'GRE',
      link: 'coming soon',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: jobListings.length,
              itemBuilder: (context, index) {
                final job = jobListings[index];
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          job.name,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 5),
                        if (job.link != 'coming soon')
                          InkWell(
                            child: const Text(
                              'Open',
                              style: TextStyle(color: Colors.blue),
                            ),
                            onTap: () => launch(job.link),
                          )
                        else
                          const Text("coming soon"),
                      ],
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

class GuideListing {
  final String name;
  final String link;

  GuideListing({
    required this.name,
    required this.link,
  });
}
