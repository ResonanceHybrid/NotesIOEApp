import 'package:flutter/material.dart';
import 'package:ioe/screens/components/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class CommunicationSystemI extends StatelessWidget {
  final int initialTabIndex;
  CommunicationSystemI({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Communication System I',
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
          "Notes Will Be Availabe Shortly\nKeep Checking The App :)",
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
          SectionHeader(text: 'Introduction (4 hours)'),
          SizedBox(height: 10),
          SubSection(
              text:
                  'Analog and Digital communication sources, transmitters, transmission channels and receivers.'),
          SubSection(
              text:
                  'Noise, distortion and interference. Fundamental limitations due to noise, distortion and interference.'),
          SubSection(text: 'Types and reasons for modulation.'),
          SectionHeader(
              text:
                  'Representation of signals and systems in communication (4 hours)'),
          SubSection(
              text:
                  'Review of signals (types, mathematical representation and applications)'),
          SubSection(
              text:
                  'Linear/non-linear, time variant/invariant systems. Impulse response and transfer function of a system. Properties of LTI systems.'),
          SubSection(
              text:
                  'Low pass and band pass signals and systems, bandwidth of the system, distortionless transmission, the Hilbert transform and its properties.'),
          SubSection(
              text:
                  'Complex envelops rectangular (in-phase and quadrature components) and polar representation of band pass band limited signals.'),
          SectionHeader(text: 'Spectral Analysis (4 hours)'),
          SubSection(
              text:
                  'Review of Fourier series and transform, energy and power, Parseval’s theorem'),
          SubSection(
              text:
                  'Energy Density Spectrum, periodogram, power spectral density function (psdf)'),
          SubSection(
              text:
                  'Power spectral density functions of harmonic signal and white noise'),
          SubSection(
              text:
                  'The autocorrelation (AC) function, relationship between psdf and AC function.'),
          SectionHeader(text: 'Amplitude Modulation (12 hours)'),
          SubSection(
              text:
                  'Time domain expressions, frequency domain representation, modulation index, signal bandwidth'),
          SubSection(
              text:
                  'AM for a single tone message, carrier and side-band components, powers in carrier and side-band components, bandwidth and power efficiency'),
          SubSection(text: 'Generation of DSB-FC AM'),
          SubSection(
              text:
                  'Double Side Band Suppressed Carrier AM (DSB-AM), time and frequency domain expressions, powers in side-bands, bandwidth and power efficiency'),
          SubSection(text: 'Generation of DSB-AM (balanced, ring modulators)'),
          SubSection(
              text:
                  'Single Side Band Modulation, time and frequency domain expressions, powers'),
          SubSection(
              text: 'Generation of SSB (SSB filters and indirect method)'),
          SubSection(
              text:
                  'Vestigial Side Bands (VSB), Independent Side Bands (ISB) and Quadrature Amplitude Modulations (QAM)'),
          SectionHeader(text: 'Demodulation of AM signals (6 hours)'),
          SubSection(
              text:
                  'Demodulation of DSB-FC, DSB-SC and SSB using synchronous detection'),
          SubSection(text: 'Square law and envelope detection of DSB-FC'),
          SubSection(
              text:
                  'Demodulation of SSB using carrier reinsertion, carrier recovery circuits'),
          SubSection(
              text:
                  'Phase Locked Loop (PLL), basic concept, definitions, equations and applications, demodulation of AM using PLL'),
          SectionHeader(
              text:
                  'Frequency Modulation (FM) and Phase Modulation (PM) (12 hours)'),
          SubSection(
              text: 'Basic definitions, time domain expressions for FM and PM'),
          SubSection(
              text:
                  'Time domain expression for single tone modulated FM signals, spectral representation, Bessel’s functions'),
          SubSection(
              text: 'Bandwidth of FM, Carson’s rule, narrow and wideband FM'),
          SubSection(text: 'Generation of FM (direct and Armstrong’s methods)'),
          SubSection(
              text:
                  'Demodulation of FM and PM signals, synchronous (PLL) and non-synchronous (limiter-discriminator) demodulation'),
          SubSection(text: 'Stereo FM, spectral details, encoder and decoder'),
          SubSection(text: 'Pre-emphasis and de-emphasis networks'),
          SubSection(text: 'The superheterodyne radio receivers for AM and FM'),
          SectionHeader(
              text: 'Frequency Division Multiplexing (FDM) (3 hours)'),
          SubSection(
              text:
                  'Principle of frequency division multiplexing, FDM in telephony, hierarchy'),
          SubSection(
              text:
                  'Frequency Division Multiple Access (FDMA) systems- SCPC, DAMA, SPADE etc.'),
          SubSection(text: 'Filter and oscillator requirements in FDM.'),
          SectionHeader(text: 'Experiments'),
          SubSection(
              text:
                  'Demonstration of power spectrum of various signals using LF spectrum analyzer'),
          SubSection(text: 'Generation of DSB-SC, DSB-FC and SSB signals'),
          SubSection(
              text:
                  'Demodulation of AM signals (synchronous and non-synchronous methods)'),
          SubSection(text: 'Generation of FM signals'),
          SubSection(text: 'Demodulation of FM signal (limiter-discriminator)'),
          SubSection(
              text:
                  'Operation of PLL, PLL as demodulator of AM and FM signals.'),
          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  'S. Haykin, Analog and Digital communication systems, latest editions'),
          SubSection(
              text:
                  'Leon Couch, Digital and analog communication systems, latest edition'),
          SubSection(
              text:
                  'B.P.Lathi, Analog and Digital communication systems, latest edition'),
          SubSection(
              text:
                  'J. Proakis, Analog and Digital communication systems, latest edition'),
          SubSection(
              text: 'D. Sharma, Course manual “Communication Systems I”.'),
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
                    'https://notesioe.com/wp-content/uploads/2023/04/Communication-System-I.pdf');
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
