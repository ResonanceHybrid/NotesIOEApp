import 'package:flutter/material.dart';
import 'package:ioe/screens/components/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class RFMicrowaveEngineering extends StatelessWidget {
  final int initialTabIndex;
  RFMicrowaveEngineering({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'RF and Microwave Engineering',
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
          "Notes Will Be Availabe Shortly\nKeep Checking The App :)",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              fontStyle: FontStyle.italic),
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
                      child: Center(child: Text('3')),
                    ),
                    TableCell(
                      child: Center(child: Text('8')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('2')),
                    ),
                    TableCell(
                      child: Center(child: Text('6')),
                    ),
                    TableCell(
                      child: Center(child: Text('8')),
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
                      child: Center(child: Text('8')),
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
                      child: Center(child: Text('10')),
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
                      child: Center(child: Text('8')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('6')),
                    ),
                    TableCell(
                      child: Center(child: Text('10')),
                    ),
                    TableCell(
                      child: Center(child: Text('20')),
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
                      child: Center(child: Text('8')),
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
                      child: Center(child: Text('10')),
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
          SectionHeader(text: 'Introduction (3 hours)'),
          SubSection(text: 'Standard frequency bands'),
          SubSection(
              text:
                  'Behaviour of circuits at conventional and RF/microwave bands'),
          SubSection(text: 'Microwave applications'),
          SectionHeader(text: 'RF and M/W Transmission Lines (6 hours)'),
          SubSection(text: 'Types of transmission lines'),
          SubSection(text: 'Transmission line theory'),
          SubSection(text: 'Smith Chart analysis'),
          SubSection(text: 'Impedance transformations and matching analysis'),
          SectionHeader(
              text: 'RF and M/W Network Theory and Analysis (4 hours)'),
          SubSection(text: 'Scattering matrix and its properties'),
          SubSection(text: 'S-Parameter derivation and analysis'),
          SectionHeader(text: 'RF/Microwave Components and Devices (8 hours)'),
          SubSection(text: 'Coupling probes'),
          SubSection(text: 'Coupling loops'),
          SubSection(text: 'Waveguide'),
          SubSection(text: 'Termination, E-plane Tee, H-plane Tee, Magic Tee'),
          SubSection(text: 'Phase-Shifter'),
          SubSection(text: 'Attenuators'),
          SubSection(text: 'Directional coupler'),
          SubSection(text: 'Gunn diode'),
          SubSection(text: 'Microwave transistor'),
          SubSection(text: 'MASER'),
          SubSection(text: 'Resonator and circulators'),
          SectionHeader(text: 'Microwave Generators (5 hours)'),
          SubSection(text: 'Transit-time effect'),
          SubSection(text: 'Limitations of conventional tubes'),
          SubSection(text: 'Two-cavity and multi-cavity klystrons'),
          SubSection(text: 'Reflex klystron'),
          SubSection(text: 'TWT and magnetrons'),
          SectionHeader(text: 'RF Design Practices (10 hours)'),
          SubSection(text: 'RF Low pass filter'),
          SubSection(text: 'Insertion loss'),
          SubSection(text: 'Frequency scaling'),
          SubSection(text: 'Microstrip implementation'),
          SubSection(text: 'RF Amplifier'),
          SubSection(text: 'Amplifier theory'),
          SubSection(text: 'Design and real world consideration'),
          SubSection(text: 'Oscillator and mixer'),
          SubSection(text: 'Oscillator and super mixing theory'),
          SubSection(text: 'Design and real world consideration'),
          SectionHeader(text: 'Microwave Antennas and Propagation (3 hours)'),
          SubSection(text: 'Antenna types'),
          SubSection(text: 'Propagation characteristics of microwave antennas'),
          SubSection(
              text: 'RF and M/W radiation, safety practices and standards'),
          SectionHeader(text: 'RF/Microwave Measurements (6 hours)'),
          SubSection(text: 'Power measurement'),
          SubSection(text: 'Calorimeter method'),
          SubSection(text: 'Bolometer bridge method'),
          SubSection(text: 'Thermocouples'),
          SubSection(text: 'Impedance measurement'),
          SubSection(text: 'RF frequency measurement and spectrum analysis'),
          SubSection(text: 'Measurement of unknown loads'),
          SubSection(text: 'Measurement of reflection coefficient'),
          SubSection(text: 'VSWR and Noise'),
          SectionHeader(text: 'Practicals:'),
          SubSection(text: 'Illustration of Smith Chart and load analysis'),
          SubSection(
              text:
                  'Introduction to RF and M/W signal and circuits, measuring techniques, instrumentations, and practices'),
          SubSection(
              text:
                  'Designing and analysis of simple strip-line and two-port circuits using network and spectrum analysers'),
          SubSection(
              text:
                  'Software-based (ADS-like) RF signal & circuit simulation practices'),
          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  'Microwave Principles - Herbert J. Reich and et al., Van Nostard Reinhold.'),
          SubSection(
              text: 'Microwave Electronics– K.C. Gupta, Tata McGraw Hill.'),
          SubSection(
              text:
                  'Microwave Engineering – A. K. Gautam, S. K. Kataria & Sons.'),
          SubSection(
              text: 'Microwave Techniques – D.C. Agrawal, Tata McGraw Hill.'),
          SubSection(
              text:
                  'Elements of Microwave Engineering – R. Chatterjee, Tata McGraw Hill.'),
          SubSection(
              text:
                  'Microwave Devices & Circuits – Samuel Y. Liao, PHI 3rd Edition, 1994.'),
          SubSection(
              text:
                  'Microwave Engineering - David M. Pozar, 2nd Edition, John Wiley & Sons.'),
          SubSection(
              text:
                  'ARRL UHF/Microwave Experimenter’s Manual, 4th Edition, Newington CT: 1997.'),
          SubSection(
              text:
                  'Engineering Electromagnetics – W. H. Hayt, McGraw-Hill Book Company.'),
          SubSection(
              text:
                  'Microwave Engineering – A. Das, 2nd Edition, Tata McGraw Hill.'),
          SubSection(
              text:
                  'Electronic Transmission Technology: Lines, Waves, and Antennas - William Sinnema, Prentice Hall.'),
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
              fileSize: '3',
              icon: Icons.question_answer_outlined,
              onTap: () {
                openPDF(context,
                    'https://notesioe.com/wp-content/uploads/2024/07/RF-Microwave-Engineering.pdf');
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
