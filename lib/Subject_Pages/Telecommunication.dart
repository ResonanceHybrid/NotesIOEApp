import 'package:flutter/material.dart';
import 'package:ioe/screens/components/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class TelecommunicationCourse extends StatelessWidget {
  final int initialTabIndex;
  TelecommunicationCourse({this.initialTabIndex = 0});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Telecommunication',
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
                ),
              ),
              Tab(
                child: Text(
                  'Old Questions',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
            indicatorColor: kblue,
            labelColor: Colors.black,
          ),
        ),
        body: TabBarView(
          children: [
            _buildNotesTab(context),
            _buildSyllabusTab(),
            _buildOldQuestionsTab(context),
          ],
        ),
      ),
    );
  }

  Widget _buildNotesTab(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      children: [
        SizedBox(height: 30),
        Text(
          "Notes Will Be Available Shortly\nKeep Checking The App :)",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    );
  }

  Widget _buildSyllabusTab() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionHeader(text: 'Evaluation Scheme'),
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
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('7')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('2')),
                    ),
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('7')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('3')),
                    ),
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('7')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('8')),
                    ),
                    TableCell(
                      child: Center(child: Text('14')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('5')),
                    ),
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('7')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('6')),
                    ),
                    TableCell(
                      child: Center(child: Text('9')),
                    ),
                    TableCell(
                      child: Center(child: Text('16')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('7')),
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
                      child: Center(child: Text('8')),
                    ),
                    TableCell(
                      child: Center(child: Text('10')),
                    ),
                    TableCell(
                      child: Center(child: Text('18')),
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
          SectionHeader(text: 'Telecommunication Networks [4 hours]'),
          SubSection(text: 'Evolution of telecommunications'),
          SubSection(text: 'Classification of switching system'),
          SectionHeader(text: 'Transmission Media [4 hours]'),
          SubSection(text: 'Transmission media characteristics'),
          SubSection(text: 'Transmission lines'),
          SubSection(text: 'Hybrid Transformer and circuits'),
          SubSection(text: 'Signal and noise measurement'),
          SectionHeader(text: 'Signal Multiplexing [4 hours]'),
          SubSection(
              text:
                  'Frequency division multiplex, Wavelength division multiplex'),
          SubSection(text: 'Space division multiplex'),
          SubSection(
              text:
                  'Time division multiplex; North American TDM system, The European E1'),
          SectionHeader(text: 'Digital Switching [8 hours]'),
          SubSection(text: 'Digital Telephone Exchange'),
          SubSection(text: 'Space (S) Switch'),
          SubSection(text: 'Time (T) Switch'),
          SubSection(text: 'ST, TS, STS and TST switch'),
          SubSection(text: 'Comparison between TST and STS switch'),
          SectionHeader(text: 'Signaling System [4 hours]'),
          SubSection(
            text:
                'Classification of Signaling Systems: Channel Associated Signaling and Common Channel Signaling',
          ),
          SubSection(text: 'ITU Common Channel Signaling System # 7 (SS7)'),
          SectionHeader(text: 'Telephone Traffic [9 hours]'),
          SubSection(text: 'Network Traffic load and parameters'),
          SubSection(
              text:
                  'Loss System: Grade of service (GOS) and Blocking probability'),
          SubSection(text: 'Delay System: Queuing theory'),
          SubSection(text: 'Routing'),
          SubSection(text: 'Numbering Plans, Charging Plans'),
          SectionHeader(text: 'Telecommunication Regulation [2 hours]'),
          SubSection(
            text:
                'Purpose of ITU (International Telecommunications Union), NTA (Nepal Telecommunications Authority)',
          ),
          SectionHeader(text: 'Data Communication [10 hours]'),
          SubSection(text: 'Switching Techniques in data Communication'),
          SubSection(text: 'IP Switching'),
          SubSection(text: 'Soft Switching'),
          SubSection(text: 'Routing and Flow control'),
          SubSection(text: 'ISDN'),
          SubSection(text: 'DSL'),
          SubSection(
              text:
                  'Practical: Six laboratory to illustrate course principles'),
          SectionHeader(text: 'References'),
          SubSection(
            text: 'John C. Bellamy “Digital Telephony“ John Wiley & Sons, Inc.',
          ),
          SubSection(
            text:
                'Roger L. Freeman “Telecommunication System Engg. “ John Wiley & Sons, Inc.',
          ),
          SubSection(
            text: 'A. S. Tanenbaum “Computer Networks” Prentice Hall.',
          ),
          SubSection(
            text:
                'Telecommunication Switching Systems and Networks, by Thiagarajan Vishwanathan',
          ),
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
              fileSize: "4",
              icon: Icons.question_answer_outlined,
              onTap: () {
                openPDF(context,
                    'https://notesioe.com/wp-content/uploads/2023/04/Telecommunication.pdf');
              },
            ),
            SizedBox(height: 30),
            Text(
              "New Questions Will Be Added Accordingly,\nKeep Checking The App :)",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
