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
      company: 'Goldman Sachs',
      batch: 'UG + PG in 2nd year / pre final year',
      role: '2024 Summer Analyst Program',
      salary: 'Not specified',
      link:
          'https://goldmansachs.tal.net/vx/lang-en-GB/mobile-0/brand-2/xf-caeaaeb33c61/candidate/so/pm/1/pl/1/opp/2-Summer-Analyst-Summer-Associate-Internship-programs/en-GB',
    ),
    JobListing(
        company: 'IBM',
        batch: 'Not specified',
        role: "Software Developer Intern",
        salary: "Not specified",
        link:
            "https://careers.ibm.com/job/19976272/software-developer-intern-bangalore-in/"),
    JobListing(
        company: 'IMC',
        batch: 'B.tech 2024 graduates',
        role: "Graduate Software Engineer",
        salary: "Not specified",
        link:
            "https://careers.imc.com/us/en/job/4282981101/Graduate-Software-Engineer"),
    JobListing(
        company: 'ZF Group',
        batch: 'UG in Mechanical or Mechatronics domain',
        role: "Graduate Engineer Trainee (GET)",
        salary: "Not specified",
        link:
            "https://jobs.zf.com/job/Chennai-GET-B_TechB_E-Mechanical-Mechatronics-TN-631604/1018168301/"),
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
                    padding: const EdgeInsets.all(13.0),
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
