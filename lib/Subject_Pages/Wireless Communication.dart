import 'package:flutter/material.dart';
import 'package:ioe/screens/components/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class WirelessCommunication extends StatelessWidget {
  final int initialTabIndex;
  WirelessCommunication({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Wireless Communication',
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
          "Notes Will Be Available Shortly\nKeep Checking The App :)",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              fontStyle: FontStyle.italic),
        )
      ],
    );
  }

  Widget _buildSyllabusTab() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionHeader(text: 'Course Objectives'),
          SubSection(
              text:
                  'To introduce the student to the principles and building blocks of wireless communications.'),
          SectionHeader(text: 'Introduction [2 hours]'),
          SubSection(
              text:
                  'Evolution of wireless (mobile) communications, worldwide market, examples'),
          SubSection(text: 'Comparison of available wireless systems, trends'),
          SubSection(
              text:
                  'Trends in cellular radio (2G, 2.5G, 3G, beyond 3G) and personal wireless communication systems'),
          SectionHeader(
              text: 'Cellular mobile communication concept [4 hours]'),
          SubSection(
              text: 'Frequency re-use and channel assignment strategies'),
          SubSection(
              text:
                  'Handoff strategies, types, priorities, practical considerations'),
          SubSection(
              text:
                  'Interference and system capacity, co-channel and adjacent channel interference, power control measures'),
          SubSection(text: 'Grade of service, definition, standards'),
          SubSection(
              text:
                  'Coverage and capacity enhancement in cellular network, cell splitting, sectoring, repeaters, microcells'),
          SectionHeader(
              text:
                  'Radio wave propagation in mobile network environment [12 hours]'),
          SubSection(
              text:
                  'Review of free space propagation model, radiated power and electric field'),
          SubSection(
              text:
                  'Propagation mechanisms (large-scale path loss) - Reflection, ground reflection, diffraction and scattering'),
          SubSection(
              text: 'Practical link budget design using path loss models.'),
          SubSection(
              text:
                  'Outdoor propagation models (Longley-Rice, Okumura, Hata, Walfisch and Bertoni, microcell)'),
          SubSection(
              text:
                  'Indoor propagation models (partition losses, long-distance path loss, multiple breakpoint, attenuation factor)'),
          SubSection(
              text:
                  'Small scale fading and multipath (factors, Doppler shift), Impulse response model of multipath channel, multipath measurements, parameters of mobile multipath channel (time dispersion, coherence bandwidth, Doppler spread and coherence time)'),
          SubSection(
              text:
                  'Types of small-scale fading (flat, frequency selective, fast, slow), Rayleigh and Ricean fading distribution'),
          SectionHeader(
              text:
                  'Modulation-Demodulation methods in mobile communications [4 hours]'),
          SubSection(
              text:
                  'Review of amplitude (DSB, SSB, VSB) and angle (frequency, phase) modulations and demodulation techniques'),
          SubSection(
              text:
                  'Review of line coding, digital linear (BPSK, DPSK, QPSKs) and constant envelop (BFSK, MSK, GMSK) modulation and demodulation techniques'),
          SubSection(
              text:
                  'M-ary (MPSK, MFSK, QAM and OFDM) modulation and demodulation techniques'),
          SubSection(
              text:
                  'Spread spectrum modulation techniques, PN sequences, direct sequence and frequency hopped spread spectrums'),
          SubSection(
              text:
                  'Performance comparison of modulations techniques in various fading channels'),
          SectionHeader(
              text: 'Equalization and diversity techniques [4 hours]'),
          SubSection(
              text:
                  'Basics of equalization. Equalization in communications receivers, linear equalizers'),
          SubSection(
              text:
                  'Non-linear equalization, decision feedback and maximum likelihood sequence estimation equalizations'),
          SubSection(
              text:
                  'Adaptive equalization algorithms, zero forcing, least mean square, recursive least squares algorithms, fractionally spaced equalizers'),
          SubSection(
              text:
                  'Diversity methods, advantages of diversity, basic definitions'),
          SubSection(
              text:
                  'Space diversity, reception methods (selection, feedback, maximum ratio and equal gain diversity)'),
          SubSection(text: 'Polarization, frequency and time diversity'),
          SubSection(text: 'RAKE receivers and interleaving'),
          SectionHeader(
              text: 'Speech and channel coding fundamentals [4 hours]'),
          SubSection(
              text:
                  'Characteristics of speech signals, frequency domain coding of speech (sub-band and adaptive transform coding)'),
          SubSection(
              text:
                  'Vocoders (channel, formant, cepstrum and voice-excited ), Linear predictive coders (multipulse, code and residual excited LPCs), Codec for GSM mobile standard'),
          SubSection(
              text:
                  'Review of block codes, Hamming, Hadamard, Golay, Cyclic, Bosh-Chaudhary- Hocquenghgem (BCH), Reed-Solomon (RS) codes'),
          SubSection(
              text:
                  'Convolutional codes, encoders, coding gain, decoding algorithms (Viterbi and others)'),
          SubSection(text: 'Trellis Code Modulation (TCM), Turbo codes'),
          SectionHeader(
              text: 'Multiple Access in Wireless communications [9 hours]'),
          SubSection(
              text:
                  'Frequency Division Multiple Access (FDMA), principles and applications'),
          SubSection(
              text:
                  'Time Division Multiple Access (TDMA), principles and applications'),
          SubSection(
              text:
                  'Spread Spectrum Multiple Access, Frequency Hopped Multiple Access, Code Division Multiple Access, hybrid spread spectrum multiple access techniques'),
          SubSection(text: 'Space Division Multiple Access'),
          SubSection(text: 'Standards for Wireless Local Area Networks'),
          SectionHeader(text: 'Wireless systems and standards [6 hours]'),
          SubSection(
              text:
                  'Evolution of wireless telephone systems: AMPS, PHS, DECT, CT2, IS-94, PACS, IS-95, IS-136, IS-54 etc.'),
          SubSection(
              text:
                  'Global system for Mobile (GSM): Services and features, system architecture, radio sub-system, channel types (traffic and control), frame structure, signal processing, example of a GSM call'),
          SubSection(
              text:
                  'CDMA standards: Frequency and channel specifications, Forward and Reverse CDMA channels'),
          SubSection(
              text:
                  'WiFi, WiMAX, UMB, UMTS, CDMA-EVDO, LTE, and recent trends'),
          SubSection(
              text:
                  'Regulatory issues (spectrum allocation, spectrum pricing, licensing, tariff regulation and interconnection issues)'),
          SectionHeader(text: 'Practical'),
          SubSection(text: 'Case Study and Field Visit'),
          SubSection(
              text:
                  'Visits to mobile service operators, network service providers, internet service providers'),
          SectionHeader(text: 'References'),
          SubSection(
              text:
                  'K. Feher, Wireless Digital Communications, latest editions'),
          SubSection(
              text: 'T. Rappaport, Wireless Communications, Latest editions'),
          SubSection(text: 'J. Schiller, Mobile Communications'),
          SubSection(
              text:
                  'Leon Couch, Digital and analog communication systems, latest edition'),
          SubSection(
              text:
                  'B.P.Lathi, Analog and Digital communication systems, latest edition'),
          SubSection(
              text:
                  'J. Proakis, Digital communication systems, latest edition'),
          SubSection(
              text: 'D. Sharma, Course manual “Communication Systems II”.'),
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
                    'https://notesioe.com/wp-content/uploads/2024/07/Wireless-Communication.pdf');
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
