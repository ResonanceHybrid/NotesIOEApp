import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/subjectnavigation.dart';
import 'package:ioe/screens/otherpageappbar.dart';

class SearchLogic extends StatefulWidget {
  const SearchLogic({Key? key}) : super(key: key);

  @override
  _SearchLogicState createState() => _SearchLogicState();
}

class _SearchLogicState extends State<SearchLogic> {
  final List<String> allSubjects = [
    'Applied Mechanics',
    'Artificial Intelligence',
    'Building Technology',
    'Civil Engineering Materials',
    'Computational Techniques in Civil Engineering',
    'Computer Graphics',
    'Computer Organization And Architecture',
    'Computer Networks and Security',
    'Concrete Technology and Masonry Structure',
    'Construction Management',
    'Control System',
    'Data Communication',
    'Database Management System',
    'Design of RCC Structure',
    'Design of Steel and Timber Structure',
    'Digital Control System',
    'Digital Signal Analysis and Processing',
    'Distributed System',
    'Electric Machines II',
    'Electrical Machines I',
    'Industrial Power Distribution and Illumination',
    'Power System Analysis I',
    'Power System Analysis II',
    'Switchgear and Protection',
    'Electric Circuits and Machines',
    'Embedded System',
    'Energy Environment and Society',
    'Engineering Geology I',
    'Engineering Geology II',
    'Engineering Hydrology',
    'Engineering Professional Practice',
    'Estimating and Costing',
    'Fluid Mechanics',
    'Foundation Engineering',
    'Hydraulics',
    'Hydropower Engineering',
    'Information System',
    'Instrumentation II',
    'Instrumentation I',
    'Internet and Intranet',
    'Irrigation and Drainage Engineering',
    'Minor Project',
    'Object Oriented Analysis and Design',
    'Operating System',
    'Organization and Management',
    'Probability And Statistics',
    'Project Engineering',
    'Project Management',
    'Simulation and Modeling',
    'Software Engineering',
    'Soil Mechanics',
    'Strength of Materials',
    'Surveying I',
    'Surveying II',
    'Technology Environment and Society',
    'Theory of Structures II',
    'Transportation Engineering II',
    'Transportation Engineering',
    'Water Supply Engineering',
    'Engineering Chemistry',
    'Engineering Drawing I',
    'Engineering Math II',
    'Engineering Math III',
    'Engineering Math I',
    'Basic Electrical Engineering',
    'Basic Electronics Engineering',
    'Computer Programming',
    'Digital Logic',
    'Discrete Structure',
    'Electric Circuit Theory',
    'Electric Devices and Circuit',
    'Electric Machine',
    'Electromagnetism',
    'Microprocessor',
    'Numerical Method',
    'Object Oriented Programming',
    'Theory of Computation',
    'Thermodynamics',
    'Workshop Technology',
    'Communication English',
    'ICT Project Management',
    'Engineering Physics',
    'Engineering Drawing II',
    'Applied Mathematics',
    'Instrumentation II',
    'Instrumentation I',
    'Data Structure and Algorithm',
    'Microprocessor',
    'Discrete Structure',
    'Electric Circuit Theory',
    'Electrical Machine',
    'Communication English',
    'Probability and Statistics',
    'Computer organization and Architecture',
    'Software Engineering',
    'Computer Graphics',
    'Instrumentation II',
    'Data Communication',
    'Engineering Economics',
    'Object Oriented Analysis and Design',
    'Artificial Intelligence',
    'Operating System',
    'Embedded System',
    'Database Management System',
    'Minor Project',
    'ICT Project Management',
    'Organization and Management',
    'Energy Environment and Society',
    'Distributed System',
    'Computer Networks and Security',
    'Digital Signal Analysis',
    'Engineering Professional Practice',
    'Information Systems',
    'Internet and Intranet',
    'Simulation and Modeling',
    'Civil Engineering Materials',
    'Applied Mechanics Dynamics',
    'Engineering Geology I',
    'Strength of Materials',
    'Surveying I',
    'Fluid Mechanics',
    'Hydraulics',
    'Surveying II',
    'Soil Mechanics',
    'Engineering Geology II',
    'Theory of Structures II',
    'Water Supply Engineering',
    'Engineering Hydrology',
    'Concrete Technology and Masonry Structure',
    'Foundation Engineering',
    'Design of Steel and Timber Structure',
    'Building Technology',
    'Sanitary Engineering',
    'Transportation Engineering',
    'Irrigation and Drainage Engineering',
    'Hydropower Engineering',
    'Project Engineering',
    'Transportation Engineering II',
    'Estimating and Costing',
    'Design of RCC Structure',
    'Technology Environment and Society',
    'Construction Management',
    'Computational Techniques in Civil Engineering',
    'Electric Circuits and Machines',
    'Control System',
    'Power System Analysis I',
    'Power System Analysis II',
    'Electrical Machines I',
    'Electric Machines II',
    'Switchgear and Protection',
    'Digital Control System',
    'Industrial Power Distribution and Illumination',
  ];

  List<String> filteredSubjects = [];

  void _searchSubjects(String query) {
    setState(() {
      if (query.isEmpty) {
        // If the query is empty, show all subjects
        filteredSubjects = allSubjects;
      } else {
        // Filter subjects based on whether they start with the query
        filteredSubjects = allSubjects
            .where((subject) =>
                subject.toLowerCase().startsWith(query.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(heading: "Search", rightIcon: Icons.home),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  onChanged: _searchSubjects,
                  decoration: InputDecoration(
                    hintText: 'Search subjects...',
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 16.0),
                  ),
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredSubjects.length,
              itemBuilder: (context, index) {
                final subject = filteredSubjects[index];
                return GestureDetector(
                  onTap: () {
                    SubjectNavigator.navigateToSubjectPage(context, subject);
                  },
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                    padding: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                subject,
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: kblue.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child:
                              Icon(Icons.arrow_forward, color: kblue, size: 28),
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
