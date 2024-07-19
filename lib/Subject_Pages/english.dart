import 'package:flutter/material.dart';
import 'package:ioe/screens/components/constants.dart';
//import 'package:ioe/screens/components/ads_state.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';
//import 'package:provider/provider.dart';

class CommunicationEnglish extends StatelessWidget {
  final int initialTabIndex;
  CommunicationEnglish({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Communication English',
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
        //bottomNavigationBar: BannerAdWidget(),
      ),
    );
  }

  Widget _buildNotesTab(BuildContext context) {
    //final adState = Provider.of<AdState>(context, listen: false);
    return ListView(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 30),
      children: [
        Text(
          "More Resources Will Be Availabe Shortly\nKeep Using The App :)",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              fontStyle: FontStyle.italic),
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
          SectionHeader(text: 'Marks Distribution'),
          SizedBox(height: 10),
          Table(
            border: TableBorder.all(),
            children: [
              TableRow(children: [
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2), child: Text('Unit')))),
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2),
                            child: Text('Testing Items')))),
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2),
                            child: Text('Number of Questions')))),
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2),
                            child: Text('Marks Distribution')))),
              ]),
              TableRow(children: [
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2), child: Text('I')))),
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2),
                            child: Text('Reading Passages')))),
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2), child: Text('3')))),
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2), child: Text('15')))),
              ]),
              TableRow(children: [
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2), child: Text('I')))),
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2), child: Text('Novel')))),
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2), child: Text('1')))),
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2), child: Text('5')))),
              ]),
              TableRow(children: [
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2), child: Text('I')))),
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2), child: Text('Novel')))),
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2), child: Text('1')))),
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2), child: Text('5')))),
              ]),
              TableRow(children: [
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2), child: Text('I')))),
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2),
                            child: Text('Grammar')))),
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2),
                            child: Text('10 or 5')))),
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2), child: Text('5')))),
              ]),
              TableRow(children: [
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2), child: Text('II')))),
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2),
                            child: Text('Composing & Editing Strategies')))),
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2), child: Text('1')))),
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2), child: Text('5')))),
              ]),
              TableRow(children: [
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2), child: Text('II')))),
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2),
                            child: Text('MLA and APA Comparison')))),
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2), child: Text('1')))),
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2), child: Text('4')))),
              ]),
              TableRow(children: [
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2), child: Text('II')))),
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2),
                            child: Text('Writing Research Articles')))),
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2), child: Text('1')))),
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2), child: Text('10')))),
              ]),
              TableRow(children: [
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2), child: Text('II')))),
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2),
                            child:
                                Text('Writing notice, Agenda and minutes')))),
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2), child: Text('1')))),
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2), child: Text('5')))),
              ]),
              TableRow(children: [
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2), child: Text('II')))),
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2),
                            child: Text('Writing Proposal')))),
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2), child: Text('1')))),
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2), child: Text('8')))),
              ]),
              TableRow(children: [
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2),
                            child: Text('I Writing Reports')))),
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2),
                            child: Text('(Formal Report)')))),
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2), child: Text('1')))),
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2), child: Text('10')))),
              ]),
              TableRow(children: [
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2),
                            child: Text('II Writing short reports or')))),
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2),
                            child: Text('Project Report')))),
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2), child: Text('1')))),
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2), child: Text('8')))),
              ]),
              TableRow(children: [
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2), child: Text('Total')))),
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2), child: Text('')))),
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2), child: Text('')))),
                TableCell(
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.all(2), child: Text('80')))),
              ]),
            ],
          ),

          SizedBox(height: 10),
          Text(
            'There may be minor variation in marks distribution.',
          ),

          SizedBox(height: 10),
          SectionHeader(text: 'Unit I: Reading(15 hours)'),
          SubSection(text: 'Intensive Reading(8 hours)'),
          SubSection(
              text:
                  'Comprehension, Note-taking, Summary writing, Contextual questions based on facts and imagination, Interpreting text'),
          SubSection(text: 'Extensive Reading(5 hours)'),
          SubSection(
              text:
                  'Title/Topic Speculation, Finding theme, Sketching character'),
          SubSection(text: 'Contextual Grammar(2 hours)'),
          SubSection(
              text:
                  'Sequence of tense, Voice, Subject-Verb agreement, Conditional Sentences, Preposition'),
          SizedBox(height: 10),
          SectionHeader(text: 'Unit II: Writing(30 hours)'),
          SubSection(
              text: 'Introduction to technical writing process(2 hours)'),
          SubSection(
              text: 'Composing and editing strategies, MLA and APA comparison'),
          SubSection(text: 'Writing notices with agenda and minutes(2 hours)'),
          SubSection(text: 'Writing Proposal(6 hours)'),
          SubSection(text: 'Reports'),
          SubSection(text: 'Informal Reports(6 hours)'),
          SubSection(text: 'Memo Report, Letter Report'),
          SubSection(text: 'Project/Field Report(3 hours)'),
          SubSection(text: 'Formal Reports(9 hours)'),
          SubSection(
              text:
                  'Types of Formal Reports: Progress Report, Feasibility Report, Empirical/Research Report, Technical Report'),
          SubSection(text: 'Writing Research Articles(2 hours)'),
          SizedBox(height: 10),
          SectionHeader(
            text: 'References:',
          ),
          SizedBox(height: 5),
          SubSection(
            text:
                'Adhikari, Usha; Yadv, Rajkumar; Shrestha, Rup Narayan (2000) "Communicative Skills in English", Research Training Unit, IOE, Pulchowk Campus.',
          ),
          SubSection(
            text:
                'Khanal, Ramnath (2008) "Need-based Language Teaching (Analysis in Relation to Teaching of English for Profession Oriented Learners)", Kathmandu : D, Khanal.',
          ),
          SubSection(
            text:
                'Konar, Nira (2010) "Communication Skills for Professional PHI Learning" Private Limited, New Delhi.',
          ),
          SubSection(
            text:
                'Kumar, Ranjit (2006) "Research Methodology", Pearson Education.',
          ),
          // Add more references here if needed
          SizedBox(height: 10),
          SectionHeader(text: 'Language lab (30 hours)'),

          SizedBox(height: 10),
          SectionHeader(text: 'Listening (12 hours)'),

          SubSection(text: 'Activity I'),
          SubSection(
              text:
                  'General instruction on effective listening, factors influencing listening, and note-taking to ensure attention.'),
          SubSection(
              text:
                  'Equipment Required: Laptop, multimedia, laser pointer, overhead projector, power point, DVD, video set, screen'),
          SubSection(text: 'Activity II'),
          SubSection(
              text:
                  'Listening to recorded authentic instruction followed by exercises.'),
          SubSection(text: 'Equipment Required: Cassette player or laptop'),
          SubSection(text: 'Activity III'),
          SubSection(
              text:
                  'Listening to recorded authentic description followed by exercises.'),
          SubSection(text: 'Equipment Required: Cassette player or laptop'),
          SubSection(text: 'Activity IV'),
          SubSection(
              text:
                  'Listening to recorded authentic conversation followed by exercises'),
          SubSection(text: 'Equipment Required: Cassette player or laptop'),
          SizedBox(height: 10),
          SectionHeader(text: 'Speaking (18 hours)'),

          SubSection(text: 'Activity I'),
          SubSection(
              text:
                  'General instruction on effective speaking ensuring audience\'s attention, comprehension and efficient use of Audio-visual aids.'),
          SubSection(
              text:
                  'Equipment Required: Laptop, multimedia, laser pointer, DVD, video, overhead projector, power point, screen'),
          SubSection(text: 'Activity II'),
          SubSection(
              text:
                  'Making students express their individual views on the assigned topics'),
          SubSection(text: 'Equipment Required: Microphone, movie camera'),
          SubSection(text: 'Activity III'),
          SubSection(
              text:
                  'Getting students to participate in group discussion on the assigned topics'),
          SubSection(text: 'Activity IV'),
          SubSection(
              text:
                  'Making students deliver talk either individually or in group on the assigned topics'),
          SubSection(
              text:
                  'Equipment Required: Overhead projector, microphone, power point, laser pointer multimedia, video camera, screen'),
          SubSection(text: 'Activity V'),
          SubSection(
              text:
                  'Getting students to present their brief oral reports individually on the topics of their choice.'),
          SubSection(
              text:
                  'Equipment Required: Overhead projector, microphone, power point, laser pointer multimedia, video camera, screen'),
          SizedBox(height: 10),
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
              fileSize: '2',
              icon: Icons.question_answer_outlined,
              onTap: () {
                openPDF(context,
                    'https://notesioe.com/wp-content/uploads/2024/05/Communication-English.pdf');
              },
            ),
            SizedBox(height: 30),
            Text(
              "New Questions Will Be Added Accordingly,\nKeep Checking The App :)",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  fontStyle: FontStyle.italic),
            )
          ],
        ),
      ),
    );
  }
}
