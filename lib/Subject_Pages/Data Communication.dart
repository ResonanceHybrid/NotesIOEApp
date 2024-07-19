import 'package:flutter/material.dart';
//import 'package:ioe/screens/components/ads_state.dart';
import 'package:ioe/screens/components/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';
//import 'package:provider/provider.dart';

class DataCommunication extends StatelessWidget {
  final int initialTabIndex;
  DataCommunication({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Data Commuunication',
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
          text: 'Chapter 1 (Recommended)',
          fileSize: '2',
          icon: Icons.arrow_forward,
          onTap: () async {
            //adState.showInterstitialAd(); // Show the interstitial ad
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/07/DC-Chap1.pdf');
          },
        ),
        SizedBox(height: 10),
        InsideButtons(
          text: 'Chapter 1,2,3,6',
          fileSize: '10',
          icon: Icons.arrow_forward,
          onTap: () async {
            //adState.showInterstitialAd(); // Show the interstitial ad
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/06/chapter-1236.pdf');
          },
        ),
        SizedBox(height: 10),
        InsideButtons(
          text: 'Chapter 4 - Transmission Media',
          fileSize: '10',
          icon: Icons.arrow_forward,
          onTap: () {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/06/Chapter-4.pdf');
          },
        ),
        SizedBox(height: 10),
        InsideButtons(
          text: 'Chapter 5 - Data Encoding',
          fileSize: '6',
          icon: Icons.arrow_forward,
          onTap: () async {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/06/chapter-5.pdf');
          },
        ),
        SizedBox(height: 10),
        InsideButtons(
          text: 'Chapter 7 - Switching',
          fileSize: '4',
          icon: Icons.arrow_forward,
          onTap: () {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/06/chapter-7.pdf');
          },
        ),
        SizedBox(height: 10),
        InsideButtons(
          text: 'Chapte 8 - Information Theory',
          fileSize: '6',
          icon: Icons.arrow_forward,
          onTap: () async {
            openPDF(context,
                'https://docs.google.com/document/d/1tw-fvHaunX_5j3vyBImspoXJ6MPLqYfp/edit?usp=drive_link&ouid=106142024774073819398&rtpof=true&sd=true');
          },
        ),
        SizedBox(height: 10),
        InsideButtons(
          text: 'Lab 3 - Analog Modulation',
          fileSize: '0.4',
          icon: Icons.arrow_forward,
          onTap: () async {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/06/Matlab-Lab-3.docx');
          },
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "More Resources Will Be Availabe Shortly\nKeep Using The App",
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
                      child: Center(child: Text('5')),
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
                      child: Center(child: Text('6')),
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
                      child: Center(child: Text('8')),
                    ),
                    TableCell(
                      child: Center(child: Text('15')),
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
          SectionHeader(text: 'Introduction [4 hours]'),
          SubSection(text: 'Data and Signal'),
          SubSection(text: 'Analog and Digital Signal'),
          SubSection(text: 'Data Representation'),
          SubSection(text: 'Analog and Digital Data Communication System'),
          SubSection(
              text:
                  'Transmission Impairments (Attenuation, Noise, Distortion)'),

          SectionHeader(text: 'Signals and Systems [4 hours]'),
          SubSection(
              text:
                  'Signal and Classification of Signals: Periodic and Non-periodic Signals, Deterministic and Random Signals, Energy and Power Signals, Continuous Time and Discrete Time Signals'),
          SubSection(
              text:
                  'System and Basic Properties of Systems: System with and without memory, Linearity, Time Invariance, Invertibility, Casuality, Stability'),

          SectionHeader(text: 'Signal Analysis [6 hours]'),
          SubSection(text: 'Unit Impulse Function and Unit Step Function'),
          SubSection(text: 'LTI System and Impulse Response'),
          SubSection(
              text: 'Fourier Series Representation of Continuous Time Signal'),
          SubSection(text: 'Fourier Transform of Continuous Time Signal'),
          SubSection(text: 'Spectral Analysis of a Signal, Signal Bandwidth'),

          SectionHeader(text: 'Transmission Media [4 hours]'),
          SubSection(
              text:
                  'Electromagnetic Spectrum for Communication and Type of Propagation'),
          SubSection(
              text:
                  'Guided Transmission Media: Copper Media (Twisted pair and Co-axial) and Fiber Optics'),
          SubSection(text: 'Unguided Communication Bands and Antennas'),
          SubSection(
              text:
                  'Unguided Transmission Media: Terrestrial Microwaves, Satellite Communication and Cellular System'),
          SubSection(
              text:
                  'Data Rate Limits: Nyquist Bit Rate for Noiseless Channel, Shannon Capacity for Noisy Channel'),
          SubSection(
              text:
                  'Performance of Channel: Bandwidth, Throughput, Latency, Jitter, Bit Error Rate (BER)'),

          SectionHeader(text: 'Data Encoding and Modulation [10 hours]'),
          SubSection(text: 'Baseband Communication (Analog/Digital)'),
          SubSection(text: 'Data Encoding and Modulation'),
          SubSection(
              text:
                  'Types of Analog Modulation: Amplitude Modulation, Frequency Modulation and Phase Modulation'),
          SubSection(
              text:
                  'Pulse Modulation System: Pulse Amplitude Modulation (PAM), Pulse Width Modulation (PWM)'),
          SubSection(
              text:
                  'Encoding Analog Data as Digital Signal: Pulse Code Modulation (PCM)'),
          SubSection(text: 'Encoding Digital Data as Digital Signals'),
          SubSection(text: 'Line Coding Schemes: NRZ, RZ, Manchester, AMI'),
          SubSection(text: 'Block Coding, Scrambling'),
          SubSection(
              text:
                  'Digital Modulation: Amplitude Shift Keying (ASK), Frequency Shift Keying (FSK), Phase Shift Keying (PSK), Quadrature Amplitude Modulation (QAM)'),

          SectionHeader(text: 'Multiplexing and Spreading [6 hours]'),
          SubSection(text: 'Multiplexing and Application'),
          SubSection(
              text:
                  'Frequency Division Multiplexing (FDM), Wavelength-Division Multiplexing (WDM)'),
          SubSection(text: 'Time Division Multiplexing (TDM)'),
          SubSection(text: 'Spread Spectrum'),
          SubSection(text: 'Code-Division Multiple Access (CDMA)'),

          SectionHeader(text: 'Switching [3 hours]'),
          SubSection(text: 'Switching and Application'),
          SubSection(text: 'Circuit Switching and Packet Switching'),
          SubSection(text: 'Datagram Switching and Virtual Circuit Switching'),
          SubSection(text: 'X.25, Frame Relay, ATM'),

          SectionHeader(text: 'Information Theory and Coding [8 hours]'),
          SubSection(
              text: 'Introduction to Information Theory, Average Information'),
          SubSection(text: 'Source Coding – Huffman Coding'),
          SubSection(text: 'Error Detection and Correction Codes'),
          SubSection(text: 'Hamming Distance'),
          SubSection(text: 'Linear Block Coding'),
          SubSection(text: 'Cyclic Codes, CRC'),
          SubSection(text: 'Convolution Codes'),

          SectionHeader(text: 'Practical:'),
          SubSection(text: 'Signal analysis using MATLAB'),
          SubSection(
              text:
                  'Bandwidth analysis of different signals using spectrum analyzer'),
          SubSection(text: 'Analog Modulation Generation and Reconstruction'),
          SubSection(text: 'Pulse Modulation Generation and Reconstruction'),
          SubSection(
              text:
                  'Conversion of given binary sequence into different line coding'),
          SubSection(
              text:
                  'Digital Modulation (ASK, FSK, PSK) Generation and Reconstruction'),

          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  'Data and Computer Communications, Eight Edition, William Stallings'),
          SubSection(
              text:
                  'Data Communications and Networking, Fourth Edition, Behrouz A Forouzan'),
          SubSection(
              text: 'Signals and Systems, A. V. Oppenheim, Latest Edition'),
          SubSection(text: 'Computer Networks, A. S. Tanenbaum, Latest Edition')
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
              fileSize: '0.7',
              icon: Icons.question_answer_outlined,
              onTap: () {
                openPDF(context,
                    'https://notesioe.com/wp-content/uploads/2024/05/Data-Communication.pdf');
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
