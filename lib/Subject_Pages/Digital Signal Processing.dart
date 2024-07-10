import 'package:flutter/material.dart';
import 'package:ioe/screens/components/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class DigitalSignalProcessing extends StatelessWidget {
  final int initialTabIndex;
  DigitalSignalProcessing({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Digital Signal Processing',
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
                      child: Center(child: Text('Hour')),
                    ),
                    TableCell(
                      child: Center(child: Text('Marks Distribution*')),
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
                      child: Center(child: Text('3')),
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
                      child: Center(child: Text('6')),
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
                      child: Center(child: Text('7')),
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
                      child: Center(child: Text('8')),
                    ),
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('6')),
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
          Text('*Note: There may be minor deviation in marks distribution.'),
          SectionHeader(text: 'Course Objectives'),
          SubSection(
              text:
                  'To introduce digital signal processing techniques and applications.'),
          SubSection(
              text: 'To design and implement IIR and FIR digital filter.'),
          SectionHeader(text: 'Introduction [4 hours]'),
          SubSection(text: 'Basic elements of Digital Signal Processing,'),
          SubSection(
              text:
                  'Need of Digital Signal Processing over Analog Signal Processing,'),
          SubSection(text: 'A/D and D/A conversion,'),
          SubSection(
              text:
                  'Sampling continuous signals and spectral properties of sampled signals'),
          SectionHeader(text: 'Discrete-time Signals and System [6 hours]'),
          SubSection(text: 'Elementary discrete-time signals,'),
          SubSection(
              text:
                  'Linearity, Shift invariance, Causality of discrete systems,'),
          SubSection(
              text: 'Recursive and Non-recursive discrete-time systems,'),
          SubSection(text: 'Convolution sum and impulse response,'),
          SubSection(
              text:
                  'Linear Time-invariant systems characterized by constant coefficient difference equations,'),
          SubSection(
              text: 'Stability of LTI systems, Implementation of LTI system.'),
          SectionHeader(text: 'Z-Transform [6 hours]'),
          SubSection(text: 'Definition of the z-transform,'),
          SubSection(
              text:
                  'One-side and two-side transforms, ROC, Left-side, Right-sided and two-sided sequences, Region of convergence, Relationship to causality,'),
          SubSection(
              text:
                  'Inverse z-transform-by long division, by partial fraction expansion,'),
          SubSection(
              text:
                  'Z-transform properties-delay advance, Convolution, Parseval\'s theorem,'),
          SubSection(
              text:
                  'Z-transform function H(z)-transient and steady state sinusoidal response, pole-zero relationship stability.'),
          SectionHeader(text: 'Discrete Fourier Transform [7 hours]'),
          SubSection(
              text:
                  'Definition and applications, Frequency domain sampling and for reconstruction, Forward and Reverse transforms, Relationship of the DFT to other transforms,'),
          SubSection(
              text:
                  'Properties of the Discrete Fourier Transform: Periodicity, Linearity and Symmetry Properties, Multiplication of two DFTs and Circular Convolution, Time reversal, Circular time shift and Multiplication of two sequences circular frequency shift, Circular correlation and Parseval\'s Theorem,'),
          SubSection(
              text:
                  'Efficient computation of the DFT: Algorithm, applications, Applications of FFT Algorithms.'),
          SectionHeader(
              text: 'Implementation of Discrete-time System [8 hours]'),
          SubSection(
              text:
                  'Structures for FIR and IIR, Direct Form, Cascaded and parallel form, Lattice for FIR,'),
          SubSection(
              text:
                  'Conversion between direct form and lattice and vice verse, Lattice and lattice-ladder for IIR,'),
          SubSection(text: 'Frequency response,'),
          SubSection(
              text:
                  'Digital filters, finite precision implementations of discrete filters,'),
          SubSection(
              text:
                  'Representation of Numbers; fixed point and floating binary point, Effect of Rounding and truncation; Limit cycle oscillations effect,'),
          SubSection(
              text:
                  'Quantization of filter coefficients and effects on location of poles, and zeros; pole perturbation, Overflow and underflow error, Scaling to prevent overflow and underflow.'),
          SectionHeader(text: 'IIR Filter Design [5 hours]'),
          SubSection(
              text:
                  'IIR Filter Design by classical filter design using low pass approximations Butterworth, Chebychev, Inverse Chebyshev, Elliptic and Bessel-Thompson filters,'),
          SubSection(
              text:
                  'IIR filter design by Impulse-invariant method, Bilinear Transformation Method, Matched z-transform method,'),
          SubSection(
              text:
                  'IIR lowpass discrete filter design using bilinear transformation,'),
          SubSection(
              text:
                  'Spectral transformations, Highpass, Bandpass and Notch filters.'),
          SectionHeader(text: 'FIR Filter Design [5 hours]'),
          SubSection(text: 'FIR filter design by Fourier approximation,'),
          SubSection(
              text:
                  'Gibbs phenomena in FIR filter design, Design of Linear Phase FIR filters using window function, Applications of window functions to frequency response smoothing,'),
          SubSection(
              text:
                  'Window functions, Rectangular, Hamming, Blackman and Kaiser windows,'),
          SubSection(
              text:
                  'Design of linear phase FIR filter by the frequency sampling method,'),
          SubSection(
              text: 'FIR filter design using the Remez exchange algorithm,'),
          SubSection(
              text: 'Design of optimum equiripple linear-phase FIR filters.'),
          SectionHeader(text: 'Digital Filter Implementation [4 hours]'),
          SubSection(
              text: 'Implementations using special purpose DSP processors,'),
          SubSection(text: 'Bit-serial arithmetic, pipelined implementations,'),
          SubSection(text: 'Distributed arithmetic implementations.'),
          SectionHeader(text: 'Practical:'),
          SubSection(
              text: 'Study the behavior of a simple digital notch filter.'),
          SubSection(text: 'Response of a recursive digital.'),
          SubSection(
              text:
                  'Scaling, dynamic range and noise behavior of a recursive digital filter, observation of nonlinear finite precision effects.'),
          SubSection(
              text:
                  'Response of a non-recursive digital filter, Implementation in Impulse Invariant and Bilinear Transformation.'),
          SubSection(
              text:
                  'Band pass filters implemented using cascade second order sections and wave or ladder filters, Comparison of implementations.'),
          SubSection(
              text:
                  'Design of FIR filter using window method, Comparison of FIR filter for different windowing method.'),
          SectionHeader(text: 'References'),
          SubSection(
              text:
                  'J.G. Proakis and D.G. Manolakis, Digital Signal Processing, Prentice Hall of India. 2009'),
          SubSection(
              text:
                  'A.V. Oppenheim, Discrete-Time Signal Processing, Prentice Hall, 2009.'),
          SubSection(
              text:
                  'S.K. Mitra, Digital Signal Processing, A Computer-based Approach, McGraw Hill, 2008'),
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
            SizedBox(height: 30),
            Text(
              "Questions Will Be Added Accordingly,\nKeep Checking The App :)",
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
