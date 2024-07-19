import 'package:flutter/material.dart';
//import 'package:ioe/screens/components/ads_state.dart';
import 'package:ioe/screens/components/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class EngineerinGDrawingII extends StatelessWidget {
  final int initialTabIndex;
  EngineerinGDrawingII({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Engineering Drawing II',
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
          text: 'Drawing Symbols',
          fileSize: '1',
          icon: Icons.arrow_forward,
          onTap: () {
            openPDF(context,
                'https://drive.google.com/file/d/1Af3jut1vjBdUb4WMtfIFKSQ_iSmopboI/view');
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
          SectionHeader(
              text:
                  'Conventional Practices for Orthographic and Sectional Views (12 hours)'),
          SubSection(
              text:
                  'Conventional Practices in Orthographic views: Half Views and Partial Views, Treatment of Unimportant Intersections, Aligned Views, Treatment for Radially Arranged Features, Representation of Fillets and Rounds'),
          SubSection(
              text:
                  'Conventional Practices in Sectional views: Conventions for Ribs, Webs and Spokes in Sectional View, Broken Section, Removed Section, Revolved Section, Offset Section, Phantom Section and Auxiliary Sectional Views'),
          SubSection(
              text: 'Simplified Representations of Standard Machine Elements'),
          SectionHeader(text: 'Pictorial Drawings (20 hours)'),
          SubSection(text: 'Classifications: Advantages and Disadvantages'),
          SubSection(
              text:
                  'Axonometric Projection: Isometric Projection and Isometric Drawing'),
          SubSection(text: 'Procedure for making an isometric drawing'),
          SubSection(
              text:
                  'Isometric and Non-isometric Lines; Isometric and Non-isometric Surfaces'),
          SubSection(text: 'Angles in Isometric Drawing'),
          SubSection(text: 'Circles and Circular Arcs in Isometric Drawing'),
          SubSection(text: 'Irregular Curves in Isometric Drawing'),
          SubSection(text: 'Isometric Sectional Views'),
          SubSection(text: 'Oblique Projection and Oblique Drawing'),
          SubSection(text: 'Procedure for making an Oblique drawing'),
          SubSection(text: 'Rules for Placing Objects in Oblique drawing'),
          SubSection(
              text: 'Angles, Circles and Circular Arcs in Oblique drawing'),
          SubSection(text: 'Perspective Projection'),
          SubSection(text: 'Terms used in Perspective Projection'),
          SubSection(text: 'Parallel and Angular Perspective'),
          SubSection(text: 'Selection of Station Point'),
          SectionHeader(
              text:
                  'Familiarization with Different Components and Conventions (8 hours)'),
          SubSection(text: 'Limit Dimensioning and Machining Symbols'),
          SubSection(text: 'Limit, Fit and Tolerances'),
          SubSection(text: 'Machining Symbols and Surface Finish'),
          SubSection(text: 'Threads, Bolts and Nuts'),
          SubSection(
              text: 'Thread Terms and Nomenclature, Forms of Screw Threads'),
          SubSection(
              text:
                  'Detailed and Simplified Representation of Internal and External Threads'),
          SubSection(text: 'Thread Dimensioning'),
          SubSection(
              text: 'Standard Bolts and Nuts: Hexagonal Head and Square Head'),
          SubSection(text: 'Conventional Symbols for Bolts and Nuts'),
          SubSection(text: 'Welding and Riveting'),
          SubSection(
              text:
                  'Types of Welded Joints and Types of Welds, Welding Symbols'),
          SubSection(
              text:
                  'Forms and Proportions for Rivet Heads, Rivet Symbols, Types of Riveted Joints: Lap Joint, Butt Joint'),
          SubSection(
              text:
                  'Familiarization with Graphical Symbols and Conventions in Different Engineering Fields'),
          SubSection(
              text:
                  'Standard Symbols for Civil, Structural and Agricultural Components'),
          SubSection(
              text:
                  'Standard Symbols for Electrical, Mechanical and Industrial Components'),
          SubSection(
              text:
                  'Standard Symbols for Electronics, Communication and Computer Components'),
          SubSection(text: 'Topographical Symbols'),
          SubSection(text: 'Standard Piping Symbols and Piping Drawing'),
          SectionHeader(text: 'Detail and Assembly Drawings (20 hours)'),
          SubSection(text: 'Introduction to Working Drawing'),
          SubSection(
              text:
                  'Components of Working Drawing: Drawing Layout, Bill of Materials, Drawing Numbers'),
          SubSection(text: 'Detail Drawing'),
          SubSection(text: 'Assembly Drawing'),
          SubSection(
              text:
                  'Practices of Detail and Assembly Drawing: V-block Clamp, Centering Cone, Couplings, Bearings, Antivibration Mounts, Stuffing Boxes, Screw Jacks, etc'),
          SectionHeader(text: 'Practicals: 3 hrs/week'),
          SubSection(
              text:
                  'Conventional Practices for Orthographic and Sectional Views (Full and Half Section)'),
          SubSection(
              text:
                  'Conventional Practices for Orthographic and Sectional Views (Other Type Sections)'),
          SubSection(text: 'Isometric Drawing'),
          SubSection(
              text:
                  'Isometric Drawing (Consisting of Curved Surfaces and Sections)'),
          SubSection(text: 'Oblique Drawing'),
          SubSection(text: 'Perspective Projection'),
          SubSection(
              text:
                  'Familiarization with Graphical Symbols (Limit, Fit, Tolerances and Surface Roughness Symbols)'),
          SubSection(
              text:
                  'Familiarization with Graphical Symbols (Symbols for Different Engineering Fields)'),
          SubSection(text: 'Detail Drawing'),
          SubSection(text: 'Assembly Drawing I'),
          SubSection(text: 'Assembly Drawing II'),
          SubSection(text: 'Building Drawing'),
          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  '“Fundamentals of Engineering Drawing”, W. J. Luzadder, Prentice Hall, 11th Edition.'),
          SubSection(
              text:
                  '“Engineering Drawing and Graphic Technology”, T. E. French, C. J. Vierck, and R. J. Foster, McGraw Hill Publishing Co, 1992.'),
          SubSection(
              text:
                  '“Technical Drawing”, F. E. Giesecke, A. Mitchell, H. C. Spencer and J. T. Dygdone, Macmillan Publishing Co, 10th Edition.'),
          SubSection(
              text:
                  '“Machine Drawing”, N. D. Bhatt, Charotar Publishing House, India, 1991.'),
          SubSection(
              text:
                  '“Machine Drawing”, P. S. Gill, S. K. Kataria and Sons, India, 7th Edition, 2008.'),
          SubSection(
              text:
                  '“Machine Drawing”, R. K. Dhawan, S. Chand and Company Limited, India, 1992.'),
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
              fileSize: '4',
              icon: Icons.question_answer_outlined,
              onTap: () {
                openPDF(context,
                    'https://notesioe.com/wp-content/uploads/2024/06/Engineering-Drawing-II.pdf');
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
