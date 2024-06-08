import 'package:flutter/material.dart';
import 'package:ioe/screens/components/ads_state.dart';
import 'package:ioe/screens/components/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';
import 'package:provider/provider.dart';

class Toc extends StatelessWidget {
  final int initialTabIndex;
  Toc({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Theory of Computation',
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
        InsideButtons(
          text: 'Chapter 1 - Reqular Expression',
          fileSize: '4',
          icon: Icons.arrow_forward,
          onTap: () async {
            //adState.showInterstitialAd();
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/06/TOC-Chapter-1.pdf');
          },
        ),
        SizedBox(height: 10),
        InsideButtons(
          text: 'Chapter 2 - Automata Theory',
          fileSize: '11',
          icon: Icons.arrow_forward,
          onTap: () async {
            //adState.showInterstitialAd();
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/06/toc-chapter-2.pdf');
          },
        ),
        SizedBox(height: 10),
        InsideButtons(
          text: 'Chapter 3 - CFG',
          fileSize: '4',
          icon: Icons.arrow_forward,
          onTap: () async {
            //adState.showInterstitialAd();
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/06/TOC-Chap-3.pdf');
          },
        ),
        SizedBox(height: 10),
        InsideButtons(
          text: 'Chapter 4,5,6 - Turing Mahines..',
          fileSize: '3',
          icon: Icons.arrow_forward,
          onTap: () async {
            //adState.showInterstitialAd();
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/06/TOC-Chap-4-5-6.pdf');
          },
        ),
        SizedBox(height: 10),
        InsideButtons(
          text: 'Reqular Expression Examples',
          fileSize: '7',
          icon: Icons.arrow_forward,
          onTap: () async {
            //adState.showInterstitialAd();
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/06/Regular-Expression-Pumping-lemma-Closure-Properties.pdf');
          },
        ),
        SizedBox(height: 10),
        InsideButtons(
          text: 'NFA DFA Examples',
          fileSize: '6',
          icon: Icons.arrow_forward,
          onTap: () async {
            //adState.showInterstitialAd();
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/06/DFA-NFA-Example.pdf');
          },
        ),
        SizedBox(height: 10),
        InsideButtons(
          text: 'CFG CNF Examples',
          fileSize: '5',
          icon: Icons.arrow_forward,
          onTap: () async {
            //adState.showInterstitialAd();
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/06/CFG-and-CNF.pdf');
          },
        ),
        SizedBox(height: 10),
        InsideButtons(
          text: 'Turing Machines Examples',
          fileSize: '4',
          icon: Icons.arrow_forward,
          onTap: () async {
            //adState.showInterstitialAd();
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/06/TURING-MACHINE.pdf');
          },
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
                      child: Center(child: Text('12')),
                    ),
                    TableCell(
                      child: Center(child: Text('21')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('3')),
                    ),
                    TableCell(
                      child: Center(child: Text('12')),
                    ),
                    TableCell(
                      child: Center(child: Text('21')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('10')),
                    ),
                    TableCell(
                      child: Center(child: Text('17')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('5')),
                    ),
                    TableCell(
                      child: Center(child: Text('5')),
                    ),
                    TableCell(
                      child: Center(child: Text('9')),
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
                      child: Center(child: Text('5')),
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
          SectionHeader(text: 'Introduction (4 hours)'),
          SubSection(text: 'Set, relation, function, Proof techniques.'),
          SubSection(text: 'Alphabets, language, regular expression.'),

          SectionHeader(text: 'Finite Automata (12 hours)'),
          SubSection(text: 'Deterministic Finite Automata.'),
          SubSection(text: 'Non-Deterministic Finite Automata.'),
          SubSection(
              text: 'Equivalence of regular language and finite automata.'),
          SubSection(text: 'Regular language, properties of regular language.'),
          SubSection(text: 'Pumping lemma for regular language.'),
          SubSection(text: 'Decision algorithms for regular languages.'),

          SectionHeader(text: 'Context free language (12 hours)'),
          SubSection(text: 'Context free grammar.'),
          SubSection(
              text:
                  'Derivative trees, simplification of context free grammar.'),
          SubSection(text: 'Chomsky normal form.'),
          SubSection(text: 'Push down automata.'),
          SubSection(
              text:
                  'Equivalence of context free language and push down automata.'),
          SubSection(text: 'Pumping lemma for context free language.'),
          SubSection(text: 'Properties of context free language.'),
          SubSection(text: 'Decision algorithms for context free language.'),

          SectionHeader(text: 'Turing machine (10 hours)'),
          SubSection(
              text:
                  'Definition of Turing machine, notation for Turing machine.'),
          SubSection(text: 'Computing with Turing machine.'),
          SubSection(text: 'Extensions of Turing machine.'),
          SubSection(text: 'Unrestricted grammar.'),
          SubSection(text: 'Recursive function theory.'),

          SectionHeader(text: 'Undecidability (5 hours)'),
          SubSection(text: 'The Church-Turing thesis.'),
          SubSection(text: 'Halting Problem, Universal Turing machine.'),
          SubSection(
              text: 'Undecidable problems about Turing machines, grammars.'),
          SubSection(
              text:
                  'Properties of Recursive, Recursively enumerable languages.'),

          SectionHeader(text: 'Computational Complexity (2 hours)'),
          SubSection(text: 'Class P, Class NP, NP-complete problems.'),

          SectionHeader(text: 'References'),
          SubSection(
              text:
                  'H. R. Lewis, C. H. Papadimitriou, “Elements of theory of computation”, Pearson Education.'),
          SubSection(
              text:
                  'Michael Sipser, “Introduction to the Theory of Computation”, Thomson Course Technology.')
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
              fileSize: "3",
              icon: Icons.question_answer_outlined,
              onTap: () {
                openPDF(context,
                    'https://notesioe.com/wp-content/uploads/2024/06/TOC_Questions.pdf');
              },
            ),
          ],
        ),
      ),
    );
  }
}
