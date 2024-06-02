import 'package:flutter/material.dart';
import 'package:ioe/screens/components/ads_state.dart';
import 'package:ioe/screens/components/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';
import 'package:provider/provider.dart';

class SoftwareEngineering extends StatelessWidget {
  final int initialTabIndex;
  SoftwareEngineering({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Software Engineering',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text(
                  'Notes',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Tab(
                  child: Text(
                'Syllabus',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              )),
              Tab(
                  child: Text(
                'Old Questions',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              )),
            ],
            indicatorColor: kblue,
            labelColor: Colors.black,
          ),
        ),
        body: TabBarView(
          //physics: NeverScrollableScrollPhysics(),
          children: [
            _buildNotesTab(context),
            _buildSyllabusTab(),
            _buildOldQuestionsTab(context),
          ],
        ),
        bottomNavigationBar: BannerAdWidget(),
      ),
    );
  }

  Widget _buildNotesTab(BuildContext context) {
    final adState = Provider.of<AdState>(context, listen: false);
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 30),
      children: [
        InsideButtons(
          text: 'Chapter 1 - Software Requirement',
          //fileSize: '12',
          icon: Icons.arrow_forward,
          onTap: () async {
            adState.showInterstitialAd(); // Show the interstitial ad
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/06/Chapter-1.pdf');
          },
        ),
        SizedBox(height: 10),
        InsideButtons(
          text: 'Chapter 2 - System Modeling',
          //fileSize: '11',
          icon: Icons.arrow_forward,
          onTap: () {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/06/Chapter-2.pdf');
          },
        ),
        SizedBox(height: 10),
        InsideButtons(
          text: 'Chapter 3 - Architectural Design',
          //fileSize: '13',
          icon: Icons.arrow_forward,
          onTap: () async {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/06/chapter-3.pdf');
          },
        ),
        SizedBox(height: 10),
        InsideButtons(
          text: 'Chapter 4 - Real Time Software Design',
          //fileSize: '3',
          icon: Icons.arrow_forward,
          onTap: () async {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/06/chapter-4.pdf');
          },
        ),
        SizedBox(height: 10),
        InsideButtons(
          text: 'Chapter 5 - Software Reuse',
          // fileSize: '24',
          icon: Icons.arrow_forward,
          onTap: () {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/06/chapter-5-1.pdf');
          },
        ),
        SizedBox(height: 10),
        InsideButtons(
          text: 'Chapte 6 - Component Based SE',
          //fileSize: '9',
          icon: Icons.arrow_forward,
          onTap: () async {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/06/chapter-6.pdf');
          },
        ),
        SizedBox(height: 10),
        InsideButtons(
          text: 'Chapter 7 - Verification and Validation',
          // fileSize: '7',
          icon: Icons.arrow_forward,
          onTap: () async {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/06/chapter-7-1.pdf');
          },
        ),
        SizedBox(height: 10),
        InsideButtons(
          text: 'Chapter 8 - Testing and Estimation',
          //fileSize: '3',
          icon: Icons.arrow_forward,
          onTap: () async {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/06/chapter-8-1.pdf');
          },
        ),
        SizedBox(height: 10),
        InsideButtons(
          text: 'Chapter 9 - Quality Management',
          //fileSize: '3',
          icon: Icons.arrow_forward,
          onTap: () async {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/06/chapter-9.pdf');
          },
        ),
        SizedBox(height: 10),
        InsideButtons(
          text: 'Chapter 10 - Configuration Management',
          //fileSize: '3',
          icon: Icons.arrow_forward,
          onTap: () async {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/06/chapter-10.pdf');
          },
        )
        // Add more InsideButtons as needed
      ],
    );
  }

  Widget _buildSyllabusTab() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //SizedBox(height: 10),
          SectionHeader(text: 'Marks Distribution'),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Table(
              border: TableBorder.all(),
              children: [
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('Chapters')),
                    ),
                    TableCell(
                      child: Center(child: Text('Hours')),
                    ),
                    TableCell(
                      child: Center(child: Text('Marks')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('1')),
                    ),
                    TableCell(
                      child: Center(child: Text('12')),
                    ),
                    TableCell(
                      child: Center(child: Text('20')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('2')),
                    ),
                    TableCell(
                      child: Center(child: Text('3')),
                    ),
                    TableCell(
                      child: Center(child: Text('5')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('3')),
                    ),
                    TableCell(
                      child: Center(child: Text('6')),
                    ),
                    TableCell(
                      child: Center(child: Text('10')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('3')),
                    ),
                    TableCell(
                      child: Center(child: Text('5')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('5')),
                    ),
                    TableCell(
                      child: Center(child: Text('3')),
                    ),
                    TableCell(
                      child: Center(child: Text('5')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('6')),
                    ),
                    TableCell(
                      child: Center(child: Text('2')),
                    ),
                    TableCell(
                      child: Center(child: Text('3')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('7')),
                    ),
                    TableCell(
                      child: Center(child: Text('5')),
                    ),
                    TableCell(
                      child: Center(child: Text('10')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('8')),
                    ),
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('8')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('9')),
                    ),
                    TableCell(
                      child: Center(child: Text('5')),
                    ),
                    TableCell(
                      child: Center(child: Text('10')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('10')),
                    ),
                    TableCell(
                      child: Center(child: Text('2')),
                    ),
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('Total')),
                    ),
                    TableCell(
                      child: Center(child: Text('45')),
                    ),
                    TableCell(
                      child: Center(child: Text('80')),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Text('There may be minor deviation in marks distribution.'),
          SectionHeader(text: 'Software Process and requirements  (12 hours)'),
          SubSection(text: 'Software crisis'),
          SubSection(text: 'Software characteristics'),
          SubSection(text: 'Software quality attributes'),
          SubSection(text: 'Software process model'),
          SubSection(text: 'Process iteration'),
          SubSection(text: 'Process activities'),
          SubSection(text: 'Computer-aided software engineering'),
          SubSection(text: 'Functional and non-functional requirements'),
          SubSection(text: 'User requirements'),
          SubSection(text: 'System requirement'),
          SubSection(text: 'Interface specification'),
          SubSection(text: 'The software requirements documents'),
          SubSection(text: 'Feasibility study'),
          SubSection(text: 'Requirements elicitation and analysis'),
          SubSection(text: 'Requirements validation and management'),

          SectionHeader(text: 'System model (3 hours)'),
          SubSection(text: 'Context models'),
          SubSection(text: 'Behavioural models'),
          SubSection(text: 'Data and object models'),
          SubSection(text: 'Structured methods'),

          SectionHeader(text: 'Architectural design (6 hours)'),
          SubSection(text: 'Architectural design decisions'),
          SubSection(text: 'System organization'),
          SubSection(text: 'Modular decomposition styles'),
          SubSection(text: 'Control styles'),
          SubSection(text: 'Reference architectures'),
          SubSection(text: 'Multiprocessor architecture'),
          SubSection(text: 'Client-server architectures'),
          SubSection(text: 'Distributed object architectures'),
          SubSection(text: 'Inter-organizational distributed computing'),

          SectionHeader(text: 'Real-time software design (3 hours)'),
          SubSection(text: 'System design'),
          SubSection(text: 'Real-time operating systems'),
          SubSection(text: 'Monitoring and control systems'),
          SubSection(text: 'Data acquisition systems'),

          SectionHeader(text: 'Software Reuse (3 hours)'),
          SubSection(text: 'The reuse landscape'),
          SubSection(text: 'Design patterns'),
          SubSection(text: 'Generator-based reuse'),
          SubSection(text: 'Application frameworks'),
          SubSection(text: 'Application system reuse'),

          SectionHeader(text: 'Component-based software engineering (2 hours)'),
          SubSection(text: 'Components and components models'),
          SubSection(text: 'The CBSE process'),
          SubSection(text: 'Component composition'),

          SectionHeader(text: 'Verification and validation (3 hours)'),
          SubSection(text: 'Planning verification and validation'),
          SubSection(text: 'Software inspections'),
          SubSection(text: 'Verification and formal methods'),
          SubSection(text: 'Critical System verification and validation'),

          SectionHeader(text: 'Software Testing and cost Estimation (4 hours)'),
          SubSection(text: 'System testing'),
          SubSection(text: 'Component testing'),
          SubSection(text: 'Test case design'),
          SubSection(text: 'Test automation'),
          SubSection(text: 'Metrics for testing'),
          SubSection(text: 'Software productivity'),
          SubSection(text: 'Estimation techniques'),
          SubSection(text: 'Algorithmic cost modeling'),
          SubSection(text: 'Project duration and staffing'),

          SectionHeader(text: 'Quality management (5 hours)'),
          SubSection(text: 'Quality concepts'),
          SubSection(text: 'Software quality assurance'),
          SubSection(text: 'Software reviews'),
          SubSection(text: 'Formal technical reviews'),
          SubSection(text: 'Formal approaches to SQA'),
          SubSection(text: 'Statistical software quality assurance'),
          SubSection(text: 'Software reliability'),
          SubSection(text: 'A framework for software metrics'),
          SubSection(text: 'Matrices for analysis and design model'),
          SubSection(text: 'ISO standards'),
          SubSection(text: 'CMMI'),
          SubSection(text: 'SQA plan'),
          SubSection(text: 'Software certification'),

          SectionHeader(text: 'Configuration Management (2 hours)'),
          SubSection(text: 'Configuration management planning'),
          SubSection(text: 'Change management'),
          SubSection(text: 'Version and release management'),
          SubSection(text: 'System building'),
          SubSection(text: 'CASE tools for configuration management'),

          SectionHeader(text: 'Practical:'),
          SubSection(
              text:
                  'The laboratory exercises shall include projects on requirements, analysis and designing of software system. Choice of project depend upon teacher and student, case studies shall be included too.'),
          SubSection(
              text:
                  'Guest lecture from software industry in the practical session.'),

          SectionHeader(text: 'References:'),
          SubSection(
              text: 'Ian Sommerville, Software Engineering, Latest edition'),
          SubSection(
              text:
                  'Roger S. Pressman, Software Engineering –A Practitioner’s Approach, Latest edition'),
          SubSection(
              text:
                  'Pankaj Jalote, Software Engineering-A precise approach, Latest edition'),
          SubSection(
              text:
                  'Rajib Mall, Fundamental of Software Engineering, Latest edition')
        ],
      ),
    );
  }

  Widget _buildOldQuestionsTab(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            InsideButtons(
              text: 'Old Questions',
              fileSize: '0.8',
              icon: Icons.question_answer_outlined,
              onTap: () {
                openPDF(context,
                    'https://notesioe.com/wp-content/uploads/2024/05/Software-Engineering.pdf');
              },
            ),
          ],
        ),
      ),
    );
  }
}
