import 'package:flutter/material.dart';
import 'package:ioe/screens/components/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class EngineeringPhysics extends StatelessWidget {
  final int initialTabIndex;
  EngineeringPhysics({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Engineering Physics',
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
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 30),
      children: [
        InsideButtons(
          text: 'Oscillation',
          fileSize: '6',
          icon: Icons.arrow_forward,
          onTap: () async {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/05/oscillation.pdf');
          },
        ),
        SizedBox(height: 10),
        InsideButtons(
          text: 'Wave Motion',
          fileSize: '2',
          icon: Icons.arrow_forward,
          onTap: () async {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/05/wave-motion.pdf');
          },
        ),
        SizedBox(height: 10),
        InsideButtons(
          text: 'Capacitor',
          fileSize: '5',
          icon: Icons.arrow_forward,
          onTap: () async {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/05/capacitor.pdf');
          },
        ),
        SizedBox(height: 10),
        InsideButtons(
          text: 'Acoustic',
          fileSize: '2',
          icon: Icons.arrow_forward,
          onTap: () async {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/05/acoustic.pdf');
          },
        ),
        SizedBox(height: 10),
        InsideButtons(
          text: 'Optics',
          fileSize: '3',
          icon: Icons.arrow_forward,
          onTap: () async {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/05/optics.pdf');
          },
        ),
        SizedBox(height: 10),
        InsideButtons(
          text: 'Fiber Optics',
          fileSize: '3',
          icon: Icons.arrow_forward,
          onTap: () async {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/05/fiber-optics.pdf');
          },
        ),
        SizedBox(height: 10),
        InsideButtons(
          text: 'Interference',
          fileSize: '4',
          icon: Icons.arrow_forward,
          onTap: () async {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/05/interference.pdf');
          },
        ),
        SizedBox(height: 10),
        InsideButtons(
          text: 'Polarization',
          fileSize: '3',
          icon: Icons.arrow_forward,
          onTap: () async {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/05/polarization.pdf');
          },
        ),
        SizedBox(height: 10),
        InsideButtons(
          text: 'Diffraction',
          fileSize: '3',
          icon: Icons.arrow_forward,
          onTap: () async {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/05/diffraction.pdf');
          },
        ),
        SizedBox(height: 10),
        InsideButtons(
          text: 'Electrostatics',
          fileSize: '5',
          icon: Icons.arrow_forward,
          onTap: () async {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/05/electrostatic.pdf');
          },
        ),

        SizedBox(height: 10),
        InsideButtons(
          text: 'Photon and Wave Matter',
          fileSize: '2',
          icon: Icons.arrow_forward,
          onTap: () async {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/05/photos-and-Waves.pdf');
          },
        ),
        SizedBox(height: 10),
        InsideButtons(
          text: 'Electromagnetism',
          fileSize: '8',
          icon: Icons.arrow_forward,
          onTap: () async {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/05/electromagnetism.pdf');
          },
        ),
        SizedBox(height: 10),
        InsideButtons(
          text: 'Electromagnetic Wave',
          fileSize: '2',
          icon: Icons.arrow_forward,
          onTap: () async {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/05/electromagnetic-waves.pdf');
          },
        ),
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
                      child: Center(child: Text('7')),
                    ),
                    TableCell(
                      child: Center(child: Text('10')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('2, 3')),
                    ),
                    TableCell(
                      child: Center(child: Text('5')),
                    ),
                    TableCell(
                      child: Center(child: Text('5')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('12')),
                    ),
                    TableCell(
                      child: Center(child: Text('15')),
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
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('5')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('7, 8')),
                    ),
                    TableCell(
                      child: Center(child: Text('19')),
                    ),
                    TableCell(
                      child: Center(child: Text('30')),
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
                      child: Center(child: Text('5')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('10')),
                    ),
                    TableCell(
                      child: Center(child: Text('5')),
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
                      child: Center(child: Text('60')),
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
          //SizedBox(height: 20),
          SectionHeader(text: 'Oscillation (7 hours)'),
          SubSection(text: 'Mechanical Oscillation: Introduction'),
          SubSection(text: 'Free Oscillation'),
          SubSection(text: 'Damped Oscillation'),
          SubSection(text: 'Forced Mechanical Oscillation'),
          SubSection(
              text:
                  'EM Oscillation: Free, Damped and Forced Electromagnetic Oscillation'),

          SectionHeader(text: 'Wave Motion (2 hours)'),
          SubSection(text: 'Waves and Particles'),
          SubSection(text: 'Progressive Wave'),
          SubSection(text: 'Energy, Power and Intensity of Progressive Wave'),

          SectionHeader(text: 'Acoustics (3 hours)'),
          SubSection(text: 'Reverberation'),
          SubSection(text: 'Sabine\'s Law'),
          SubSection(text: 'Ultrasound and its Applications'),

          SectionHeader(text: 'Physical Optics (12 hours)'),
          SubSection(text: 'Interference'),
          SubSection(text: 'Intensity in Double Slit Interference'),
          SubSection(text: 'Interference in Thin Films'),
          SubSection(text: 'Newton\'s Rings'),
          SubSection(text: 'Haidinger Fringes'),

          SubSection(text: 'Diffraction'),
          SubSection(text: 'Fresnel and Fraunhofer’s Diffraction'),
          SubSection(text: 'Intensity due to a Single Slit'),
          SubSection(text: 'Diffraction Grating'),
          SubSection(text: 'X-ray Diffraction, X-ray for Material Test'),

          SubSection(text: 'Polarization'),
          SubSection(text: 'Double Refraction'),
          SubSection(text: 'Nichol Prism, Wave Plates'),
          SubSection(text: 'Optical Activity, Specific Rotation'),

          SectionHeader(text: 'Geometrical Optics (3 hours)'),
          SubSection(text: 'Lenses, Combination of Lenses'),
          SubSection(text: 'Cardinal Points'),
          SubSection(text: 'Chromatic Aberration'),

          SectionHeader(text: 'Laser and Fiber Optics (4 hours)'),
          SubSection(text: 'Laser Production'),
          SubSection(text: 'He-Ne Laser'),
          SubSection(text: 'Uses of Laser'),

          SubSection(text: 'Fiber Optics'),
          SubSection(text: 'Self Focusing'),
          SubSection(text: 'Applications of Optical Fiber'),

          SectionHeader(text: 'Electrostatics (8 hours)'),
          SubSection(text: 'Electric Charge and Force'),
          SubSection(text: 'Electric Field and Potential'),
          SubSection(text: 'Electrostatic Potential Energy'),
          SubSection(text: 'Capacitors, Capacitor with Dielectric'),
          SubSection(text: 'Charging and Discharging of a Capacitor'),

          SectionHeader(text: 'Electromagnetism (11 hours)'),
          SubSection(text: 'Direct Current: Electric Current'),
          SubSection(text: 'Ohm\'s Law, Resistance and Resistivity'),
          SubSection(text: 'Semiconductor and Superconductor'),

          SubSection(text: 'Magnetic Fields'),
          SubSection(text: 'Magnetic Force and Torque'),
          SubSection(text: 'Hall Effect'),
          SubSection(text: 'Cyclotron, Synchrotron'),
          SubSection(text: 'Biot-Savart Law'),
          SubSection(
              text:
                  'Ampere’s Circuit Law, Magnetic Fields of Straight Conductors'),
          SubSection(
              text:
                  'Faraday’s Laws, Induction and Energy Transformation, Induced Field'),
          SubSection(text: 'LR Circuit, Induced Magnetic Field'),
          SubSection(text: 'Displacement Current'),

          SectionHeader(text: 'Electromagnetic Waves (5 hours)'),
          SubSection(text: 'Maxwell’s Equations'),
          SubSection(text: 'Wave Equations, Speed'),
          SubSection(text: 'E and B Fields'),
          SubSection(text: 'Continuity Equation'),
          SubSection(text: 'Energy Transfer'),

          SectionHeader(text: 'Photon and Matter Waves (5 hours)'),
          SubSection(text: 'Quantization of Energy'),
          SubSection(text: 'Electrons and Matter Waves'),
          SubSection(text: 'Schrodinger Wave Equation'),
          SubSection(text: 'Probability Distribution'),
          SubSection(text: 'One-dimensional Potential Well'),
          SubSection(text: 'Uncertainty Principle'),
          SubSection(text: 'Barrier Tunneling'),

          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  'Fundamentals of Physics: Halliday, Resnick, Walker (Latest Edition)'),
          SubSection(
              text:
                  'A Textbook of Optics: Brij Lal and Subrahmanyam (Latest Edition)'),
          SubSection(text: 'Modern Engineering Physics: A. S.Basudeva'),
          SubSection(text: 'Engineering Physics: R. K.Gaur and S. L.Gupta'),
          SubSection(text: 'Waves and Oscillation: Brij Lal and Subrahmanyam')

          // Syllabus content here
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
              fileSize: '0.9',
              icon: Icons.question_answer_outlined,
              onTap: () {
                openPDF(context,
                    'https://notesioe.com/wp-content/uploads/2024/06/PhysicsQues.pdf');
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
