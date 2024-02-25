import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class Jobs extends StatefulWidget {
  const Jobs({Key? key}) : super(key: key);

  @override
  State<Jobs> createState() => _JobsState();
}

class _JobsState extends State<Jobs> {
  final TextEditingController _searchController = TextEditingController();

  // Sample job listings data
  final List<JobListing> jobListings = [
    JobListing(
      company: 'Google',
      batch: 'PHD',
      role: 'Software Developer Intern',
      salary: 'Not specified',
      link:
          'https://www.google.com/about/careers/applications/jobs/results/112996546481398470-software-developer-intern-phd-summer-2024?target_level=INTERN_AND_APPRENTICE',
    ),
    // Add more job listings here if needed
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          SizedBox(height: 20),
          // Search bar
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
          // Job listings
          Expanded(
            child: ListView.builder(
              itemCount: jobListings.length,
              itemBuilder: (context, index) {
                final job = jobListings[index];
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Company: ${job.company}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Eligibility: ${job.batch}',
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Role: ${job.role}',
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Salary: ${job.salary}',
                        ),
                        SizedBox(height: 5),
                        InkWell(
                          child: new Text(
                            'Open Browser',
                            style: TextStyle(color: Colors.blue),
                          ),
                          onTap: () => launch(job.link),
                        ),
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

class JobListing {
  final String company;
  final String batch;
  final String role;
  final String salary;
  final String link;

  JobListing({
    required this.company,
    required this.batch,
    required this.role,
    required this.salary,
    required this.link,
  });
}
