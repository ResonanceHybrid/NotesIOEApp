import 'package:flutter/material.dart';
import 'package:ioe/screens/components/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class AntennaandPropagation extends StatelessWidget {
  final int initialTabIndex;
  AntennaandPropagation({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Antenna and Propagation',
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
                      child: Center(child: Text('Unit')),
                    ),
                    TableCell(
                      child: Center(child: Text('Hours')),
                    ),
                    TableCell(
                      child: Center(child: Text('Questions')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('1')),
                    ),
                    TableCell(
                      child: Center(child: Text('6')),
                    ),
                    TableCell(
                      child: Center(child: Text('1.5')),
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
                      child: Center(child: Text('1.5')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('3')),
                    ),
                    TableCell(
                      child: Center(child: Text('10')),
                    ),
                    TableCell(
                      child: Center(child: Text('2.5')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('6')),
                    ),
                    TableCell(
                      child: Center(child: Text('1.5')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('5')),
                    ),
                    TableCell(
                      child: Center(child: Text('6')),
                    ),
                    TableCell(
                      child: Center(child: Text('1.5')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('6')),
                    ),
                    TableCell(
                      child: Center(child: Text('11')),
                    ),
                    TableCell(
                      child: Center(child: Text('2.5')),
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
                      child: Center(child: Text('11')),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Text('There may be minor deviation in marks distribution.'),
          SectionHeader(text: 'Radiation and Antenna Fundamentals (6 hours)'),
          SubSection(
              text:
                  'Retarded Potentials: EM wave generation with a conduction current, the short uniform current dipole, the radiated electric and magnetic fields.'),
          SubSection(
              text:
                  'Radiation patterns and input impedance of the short uniform current dipole, the short Dipole and long dipole.'),
          SubSection(
              text:
                  'Antenna theorems: reciprocity, superposition, Thevenin, minimum power transfer, Compensation, equality of directional patterns, equivalence of receiving and Transmitting impedances.'),
          SectionHeader(text: 'Antenna Parameters and Arrays (6 hours)'),
          SubSection(text: 'Basic antenna parameters'),
          SubSection(
              text:
                  'Pattern multiplication: Linear and two-dimensional antenna arrays, end fire and Broadside arrays.'),
          SectionHeader(text: 'Antennas classification (10 hours)'),
          SubSection(text: 'Isotropic antenna'),
          SubSection(text: 'Omni directional antenna; Dipole'),
          SubSection(text: 'Directional antennas;'),
          SubSection(
              text:
                  'Travelling wave antennas – single wire, V and Rhombus Reflector antennas – large plane sheet, small plane sheet, linear, corner, parabolic, elliptical, hyperbolic and circular reflector. Aperture antenna - horn Array antennas – Yagi-Uda, Log Periodic Other antennas – Monopole, Loop, Helical, Microstrip.'),
          SectionHeader(
              text: 'Propagation and Radio Frequency Spectrum (6 hours)'),
          SubSection(text: 'Ground or surface wave'),
          SubSection(
              text:
                  'Space wave; direct and ground reflected wave, duct propagation'),
          SubSection(
              text:
                  'Ionospheric or sky wave; critical frequency, MUF, Skip distance'),
          SubSection(text: 'Tropospheric wave'),
          SubSection(
              text:
                  'Radio frequency spectrum and its propagation characteristics'),
          SectionHeader(text: 'Propagation between Antennas (6 hours)'),
          SubSection(
              text:
                  'Free space propagation: power density of the receiving antenna, path loss'),
          SubSection(
              text:
                  'Plane earth propagation: the ground reflection, effective antenna heights, the two ray propagation model, path loss'),
          SubSection(text: 'Fresnel Zones and Knife edge diffraction'),
          SectionHeader(text: 'Optical fibres (Introductory) (11 hours)'),
          SubSection(
              text:
                  'Optical fibre communication system and its advantages and disadvantages over Metalled wire communication system'),
          SubSection(
              text: 'Types of optical fibre and its structural difference'),
          SubSection(
              text:
                  'Light propagation characteristics and Numerical Aperture (NA) in optical fibre'),
          SubSection(text: 'Losses'),
          SubSection(text: 'Light source and photo detector'),
          SectionHeader(text: 'Practical:'),
          SubSection(
              text:
                  'Two Experiments in properties of EM waves: refraction, diffraction, polarization'),
          SubSection(
              text:
                  'Two Experiments in radiation patterns of various types of antennas'),
          SubSection(
              text:
                  'Two Experiments in measurements on optical fibre transmission systems'),
          SectionHeader(text: 'References:'),
          SubSection(text: 'J. D. Kraus, "Antenna" McGraw Hill'),
          SubSection(
              text:
                  'C. A. Balanis, "Antenna Theory Analysis and Design" John Wiley & Sons, Inc.'),
          SubSection(
              text:
                  'Collins, R. E., "Antenna and Radio Wave Propagation" McGraw Hill.'),
          SubSection(
              text: 'Gerd Kaiser "Optical Fibre Communications" McGraw Hill.'),
          SubSection(
              text:
                  'John Gowar "Optical Communication Systems" PHI Publications.'),
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
              fileSize: "1",
              icon: Icons.question_answer_outlined,
              onTap: () {
                openPDF(context,
                    'https://notesioe.com/wp-content/uploads/2023/04/Propagation-and-Antenna.pdf');
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
