import 'package:flutter/material.dart';
import 'package:ioe/screens/components/constants.dart';
import 'package:ioe/screens/components/ads_state.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class CeeEntrancesyllabus extends StatelessWidget {
  final int initialTabIndex;
  CeeEntrancesyllabus({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'CEE Entrance Materials',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              // Tab(
              //   child: Text(
              //     'Notes',
              //     style: TextStyle(
              //       fontSize: 15,
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              // ),
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
                'Model/Old Questions',
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
            // _buildNotesTab(context),
            _buildSyllabusTab(),
            _buildOldQuestionsTab(context),
          ],
        ),
        bottomNavigationBar: BannerAdWidget(),
      ),
    );
  }

  // Widget _buildNotesTab(BuildContext context) {
  //   final adState = Provider.of<AdState>(context, listen: false);
  //   return ListView(
  //     padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 30),
  //     children: [
  //       InsideButtons(
  //         text: 'Chapter 1 - Introduction',
  //         fileSize: '12',
  //         icon: Icons.arrow_forward,
  //         onTap: () async {
  //           adState.showInterstitialAd(); // Show the interstitial ad
  //           openPDF(context,
  //               'https://notesioe.com/wp-content/uploads/2023/04/Applied-1.pdf');
  //         },
  //       ),
  //       SizedBox(height: 10),
  //       InsideButtons(
  //         text: 'Chapter 3 - Force Acting on Particles and Rigid Body',
  //         fileSize: '11',
  //         icon: Icons.arrow_forward,
  //         onTap: () {
  //           openPDF(context,
  //               'https://notesioe.com/wp-content/uploads/2023/04/Applied-3.pdf');
  //         },
  //       ),
  //       SizedBox(height: 10),
  //       InsideButtons(
  //         text: 'Chapter 4 - Centroid',
  //         fileSize: '13',
  //         icon: Icons.arrow_forward,
  //         onTap: () async {
  //           openPDF(context,
  //               'https://notesioe.com/wp-content/uploads/2023/04/centroid1.pdf');
  //         },
  //       ),
  //       SizedBox(height: 10),
  //       InsideButtons(
  //         text: 'Chapter 5 - Friction',
  //         fileSize: '3',
  //         icon: Icons.arrow_forward,
  //         onTap: () async {
  //           openPDF(context,
  //               'https://notesioe.com/wp-content/uploads/2023/04/friction.pdf');
  //         },
  //       ),
  //       SizedBox(height: 10),
  //       InsideButtons(
  //         text: 'Chapter 6 - Beam And Frame',
  //         fileSize: '24',
  //         icon: Icons.arrow_forward,
  //         onTap: () {
  //           openPDF(context,
  //               'https://notesioe.com/wp-content/uploads/2023/04/beam-frame.pdf');
  //         },
  //       ),
  //       SizedBox(height: 10),
  //       InsideButtons(
  //         text: 'Chapte 7 - Truss',
  //         fileSize: '9',
  //         icon: Icons.arrow_forward,
  //         onTap: () async {
  //           openPDF(context,
  //               'https://notesioe.com/wp-content/uploads/2023/04/applied-truss.pdf');
  //         },
  //       ),
  //       SizedBox(height: 10),
  //       InsideButtons(
  //         text: 'Chapter 9 - Kinematics',
  //         fileSize: '7',
  //         icon: Icons.arrow_forward,
  //         onTap: () async {
  //           openPDF(context,
  //               'https://notesioe.com/wp-content/uploads/2023/04/kinematics.pdf');
  //         },
  //       ),
  //       SizedBox(height: 10),
  //       InsideButtons(
  //         text: 'Chapter 10 - Kinetics',
  //         fileSize: '3',
  //         icon: Icons.arrow_forward,
  //         onTap: () async {
  //           openPDF(context,
  //               'https://notesioe.com/wp-content/uploads/2023/04/kinetics.pdf');
  //         },
  //       )
  //       // Add more InsideButtons as needed
  //     ],
  //   );
  // }

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
                      child: Center(child: Text('Subject')),
                    ),
                    TableCell(
                      child: Center(child: Text('Questions')),
                    ),
                    TableCell(
                      child: Center(child: Text('Marks')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('Physics')),
                    ),
                    TableCell(
                      child: Center(child: Text('50')),
                    ),
                    TableCell(
                      child: Center(child: Text('50')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('Chemistry')),
                    ),
                    TableCell(
                      child: Center(child: Text('50')),
                    ),
                    TableCell(
                      child: Center(child: Text('50')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('Biology')),
                    ),
                    TableCell(
                      child: Center(child: Text('Zoology – 40\nBotany – 40')),
                    ),
                    TableCell(
                      child: Center(child: Text('40 + 40')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('MAT')),
                    ),
                    TableCell(
                      child: Center(child: Text('20')),
                    ),
                    TableCell(
                      child: Center(child: Text('20')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('Total')),
                    ),
                    TableCell(
                      child: Center(child: Text('200')),
                    ),
                    TableCell(
                      child: Center(child: Text('200')),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          SectionHeader(text: 'Zoology Syllabus CEE Full Marks 40'),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Table(
              border: TableBorder.all(),
              children: [
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('Content')),
                    ),
                    TableCell(
                      child: Center(child: Text('Questions')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('Biology, origin, and evolution of life'),
                      )),
                    ),
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                            'General characteristics and classification of protozoa to Chordata	'),
                      )),
                    ),
                    TableCell(
                      child: Center(child: Text('8')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('Plasmodium, earthworm, and frog'),
                      )),
                    ),
                    TableCell(
                      child: Center(child: Text('8')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('Human biology and human diseases	'),
                      )),
                    ),
                    TableCell(
                      child: Center(child: Text('14')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('Animal Tissues'),
                      )),
                    ),
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                            'Environmental pollution, adaptation and animal behavior, application of Zoology'),
                      )),
                    ),
                    TableCell(
                      child: Center(child: Text('2')),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SectionHeader(text: 'Botany Syllabus CEE Full Marks 40'),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Table(
              border: TableBorder.all(),
              children: [
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('Content')),
                    ),
                    TableCell(
                      child: Center(child: Text('Questions')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child:
                            Text('A basic component of life and biodiversity'),
                      )),
                    ),
                    TableCell(
                      child: Center(child: Text('11')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('Ecology and environment'),
                      )),
                    ),
                    TableCell(
                      child: Center(child: Text('5')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('Cell biology and genetics'),
                      )),
                    ),
                    TableCell(
                      child: Center(child: Text('12')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('Anatomy and physiology'),
                      )),
                    ),
                    TableCell(
                      child: Center(child: Text('7')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('Developmental and applied botany'),
                      )),
                    ),
                    TableCell(
                      child: Center(child: Text('5')),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SectionHeader(text: 'Chemistry Syllabus CEE Full Marks 50'),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Table(
              border: TableBorder.all(),
              children: [
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('Content')),
                    ),
                    TableCell(
                      child: Center(child: Text('Questions')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('General and physical chemistry'),
                      )),
                    ),
                    TableCell(
                      child: Center(child: Text('18')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('Inorganic chemistry'),
                      )),
                    ),
                    TableCell(
                      child: Center(child: Text('14')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('Organic Chemistry'),
                      )),
                    ),
                    TableCell(
                      child: Center(child: Text('18')),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SectionHeader(text: 'Physics Syllabus CEE Full Marks 50'),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Table(
              border: TableBorder.all(),
              children: [
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('Content')),
                    ),
                    TableCell(
                      child: Center(child: Text('Questions')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('Mechanics'),
                      )),
                    ),
                    TableCell(
                      child: Center(child: Text('10')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('Heat and thermodynamics'),
                      )),
                    ),
                    TableCell(
                      child: Center(child: Text('6')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('Geometrical optics and physical optics'),
                      )),
                    ),
                    TableCell(
                      child: Center(child: Text('6')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('Current electricity and magnetism'),
                      )),
                    ),
                    TableCell(
                      child: Center(child: Text('9')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child:
                            Text('Sound waves, electrostatics, and capacitors'),
                      )),
                    ),
                    TableCell(
                      child: Center(child: Text('6')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('Modern physics and nuclear physics'),
                      )),
                    ),
                    TableCell(
                      child: Center(child: Text('6')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('Solid and semiconductor devices'),
                      )),
                    ),
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                            'Particle physics, source of energy, and universe'),
                      )),
                    ),
                    TableCell(
                      child: Center(child: Text('3')),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SectionHeader(text: 'MAT Syllabus CEE Full Marks 20'),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Table(
              border: TableBorder.all(),
              children: [
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('Content')),
                    ),
                    TableCell(
                      child: Center(child: Text('Questions')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('Verbal reasoning'),
                      )),
                    ),
                    TableCell(
                      child: Center(child: Text('5')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('Numerical Resoning'),
                      )),
                    ),
                    TableCell(
                      child: Center(child: Text('5')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('Logical sequencing'),
                      )),
                    ),
                    TableCell(
                      child: Center(child: Text('5')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('Spatial relation / Abstract reasoning'),
                      )),
                    ),
                    TableCell(
                      child: Center(child: Text('5')),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOldQuestionsTab(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 30),
      children: [
        Text(
          "Will Be Availabe Shortly Keep Using The App :)",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              fontStyle: FontStyle.italic),
        )

        // Add more InsideButtons as needed
      ],
    );
  }
}
