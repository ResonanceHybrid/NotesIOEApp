import 'package:flutter/material.dart';
import 'package:ioe/screens/components/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class FilterDesign extends StatelessWidget {
  final int initialTabIndex;
  FilterDesign({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Filter Design',
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
      ),
    );
  }

  Widget _buildNotesTab(BuildContext context) {
    //final adState = Provider.of<AdState>(context, listen: false);
    return ListView(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      children: [
        SizedBox(height: 30),
        Text(
          "Notes Will Be Availabe Shortly\nKeep Using The App :)",
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
                      child: Center(child: Text('3')),
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
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('7')),
                    ),
                    TableCell(
                      child: Center(child: Text('13')),
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
                      child: Center(child: Text('7')),
                    ),
                    TableCell(
                      child: Center(child: Text('12')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('7')),
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
                      child: Center(child: Text('8')),
                    ),
                    TableCell(
                      child: Center(child: Text('6')),
                    ),
                    TableCell(
                      child: Center(child: Text('11')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('9')),
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
          SubSection(text: 'Filter and its importance in communication'),
          SubSection(text: 'Kinds of filters in terms of frequency response'),
          SubSection(text: 'Ideal response and response of practical filters'),
          SubSection(
              text: 'Normalization and denormalization in filter design'),
          SubSection(
              text: 'Impedance (magnitude) scaling and frequency scaling'),
          SubSection(
              text:
                  'History of filter design and available filter technologies'),
          SectionHeader(text: 'Approximation Methods (8 hours)'),
          SubSection(text: 'Approximation and its importance in filter design'),
          SubSection(text: 'Lowpass approximations methods'),
          SubSection(
              text:
                  'Butterworth response, Butterworth pole locations, Butterworth filter design from specifications'),
          SubSection(
              text:
                  'Chebyshev and inverse Chebyshev characteristics, network functions and pole zero locations'),
          SubSection(text: 'Characteristics of Cauer (elliptic) response'),
          SubSection(text: 'Bessel-Thomson approximation of constant delay'),
          SubSection(text: 'Delay Equalization'),
          SectionHeader(text: 'Frequency transformation (2 hours)'),
          SubSection(
              text:
                  'Frequency transformation and its importance in filter design'),
          SubSection(text: 'Lowpass to highpass transformation'),
          SubSection(text: 'Lowpass to bandpass transformation'),
          SubSection(text: 'Lowpass to bandstop transformation'),
          SectionHeader(
              text: 'Properties and Synthesis of Passive Networks (7 hours)'),
          SubSection(text: 'One-port passive circuits'),
          SubSection(
              text: 'Properties of passive circuits, positive real functions'),
          SubSection(text: 'Properties of lossless circuits'),
          SubSection(
              text:
                  'Synthesis of LC one-port circuits, Foster and Cauer circuits'),
          SubSection(text: 'Properties and synthesis of RC one-port circuits'),
          SubSection(text: 'Two-port Passive Circuits'),
          SubSection(
              text:
                  'Properties of passive two-port circuits, residue condition, transmission zeros'),
          SubSection(
              text:
                  'Synthesis of two-port LC and RC ladder circuits based on zero-shifting by partial pole removal'),
          SectionHeader(
              text:
                  'Design of Resistively-Terminated Lossless Filter (4 hours)'),
          SubSection(
              text:
                  'Properties of resistively-terminated lossless ladder circuits, transmission and reflection coefficients'),
          SubSection(
              text:
                  'Synthesis of LC ladder circuits to realize all-pole lowpass functions'),
          SubSection(
              text:
                  'Synthesis of LC ladder circuits to realize functions with finite transmission zeros'),
          SectionHeader(text: 'Active Filter (7 hours)'),
          SubSection(text: 'Fundamentals of Active Filter Circuits'),
          SubSection(text: 'Active filter and passive filter'),
          SubSection(
              text:
                  'Ideal and real operational amplifiers, gain-bandwidth product'),
          SubSection(
              text: 'Active building blocks: amplifiers, summers, integrators'),
          SubSection(
              text:
                  'First order active sections using inverting and non-inverting op-amp configuration'),
          SubSection(text: 'Second order active sections (biquads)'),
          SubSection(
              text:
                  'Tow-Thomas biquad circuit, design of active filter using Tow-Thomas biquad'),
          SubSection(
              text:
                  'Sallen-Key biquad circuit and Multiple-feedback biquad (MFB) circuit'),
          SubSection(text: 'Gain reduction and gain enhancement'),
          SubSection(text: 'RC-CR transformation'),
          SectionHeader(text: 'Sensitivity (3 hours)'),
          SubSection(
              text: 'Sensitivity and importance of sensitivity analysis'),
          SubSection(text: 'Definition of single parameter sensitivity'),
          SubSection(text: 'Centre frequency and Q-factor sensitivity'),
          SubSection(text: 'Sensitivity properties of biquads'),
          SubSection(text: 'Sensitivity of passive circuits'),
          SectionHeader(text: 'Design of High-Order Active Filters (6 hours)'),
          SubSection(text: 'Cascade of biquads'),
          SubSection(
              text:
                  'Sequencing of filter blocks, center frequency, Q-factor and gain'),
          SubSection(text: 'Active simulation of passive filters'),
          SubSection(text: 'Ladder design with simulated inductors'),
          SubSection(
              text:
                  'Ladder design with frequency-dependent negative resistors (FDNR)'),
          SubSection(text: 'Leapfrog simulation of ladders'),
          SectionHeader(text: 'Switched-Capacitor Filters (4 hours)'),
          SubSection(text: 'The MOS switch and switched capacitor'),
          SubSection(text: 'Simulation of resistor by switched capacitor'),
          SubSection(
              text:
                  'Switched-capacitor circuits for analog operations: addition, subtraction, multiplication and integration'),
          SubSection(
              text: 'First-order and second-order switched-capacitor circuits'),
          SectionHeader(text: 'Practical:'),
          SubSection(
              text:
                  'The laboratory experiments consist of computer simulation as well as hardware realization for analysis and design of passive and active filters which include:'),
          SubSection(
              text:
                  'Analysis and design of passive & active filter circuits using computer simulation'),
          SubSection(text: 'Design of active filters using biquad circuits'),
          SubSection(
              text:
                  'Design of higher order active filters using inductor simulation'),
          SubSection(
              text:
                  'Design of higher order active filters using functional simulation'),
          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  'Design of Analog Filters By: Rolf Schaumann, Mac E. Van Valkenburg'),
          SubSection(
              text:
                  'Passive and Active Filters (Theory and Implementations) By: Wai-Kai Chen'),
          SubSection(text: 'Analog Filter, Kendal L Su'),
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
              fileSize: "2",
              icon: Icons.question_answer_outlined,
              onTap: () {
                openPDF(context,
                    'https://notesioe.com/wp-content/uploads/2024/07/Filter-Design.pdf');
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
