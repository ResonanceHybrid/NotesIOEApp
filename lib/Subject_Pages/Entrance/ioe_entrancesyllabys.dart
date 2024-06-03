import 'package:flutter/material.dart';
import 'package:ioe/screens/components/constants.dart';
import 'package:ioe/screens/components/ads_state.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class IoeEntrancesyllabys extends StatelessWidget {
  final int initialTabIndex;
  IoeEntrancesyllabys({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'IOE Entrance Materials',
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
                      child: Center(child: Text('Marks')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('Math')),
                    ),
                    TableCell(
                      child: Center(child: Text('50')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('Physics')),
                    ),
                    TableCell(
                      child: Center(child: Text('40')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('Chemistry')),
                    ),
                    TableCell(
                      child: Center(child: Text('30')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('English')),
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
                      child: Center(child: Text('140')),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),

          //SizedBox(height: 20),
          SectionHeader(text: 'Mathematics'),
          SectionHeader(text: '1. Set, Logic and Functions'),
          SubSection(
              text:
                  '1.1 Set, real number system, intervals, absolute value, logic, connectives, laws of logic'),
          SubSection(
              text:
                  '1.2 Function, types of functions–injective, surjective, bijective, algebraic, trigonometric, exponential and logarithmic; Inverse of function, composite functions'),
          SectionHeader(text: '2. Algebra'),
          SubSection(
              text:
                  '2.1 Matrices and determinants, types and properties, inverse of a matrix'),
          SubSection(text: '2.2 Complex numbers and Polynomial equations'),
          SubSection(
              text: '2.3 Sequence and series, Permutation and Combination'),
          SubSection(
              text: '2.4 Binomial theorem, exponential and logarithmic series'),
          SectionHeader(text: '3. Trigonometry'),
          SubSection(text: '3.1 Trigonometric equations and general values'),
          SubSection(
              text: '3.2 Inverse trigonometric functions, principal value'),
          SubSection(
              text:
                  '3.3 Properties of triangles, in-centre, ortho-centre and circum-centre, solution of triangles'),
          SectionHeader(text: '4. Coordinate Geometry'),
          SubSection(text: '4.1 Straight lines, pair of lines'),
          SubSection(
              text:
                  '4.2 Circles, equations of circle in different forms, tangent and normal'),
          SubSection(
              text:
                  '4.3 Conic sections: Parabola, Ellipse and Hyperbola, standard equations and simple properties'),
          SubSection(text: '4.4 Coordinates in space, Plane and its equation'),
          SectionHeader(text: '5. Calculus'),
          SubSection(
              text:
                  '5.1 Limit and continuity of functions, indeterminate forms, L’Hospital’s rule'),
          SubSection(
              text:
                  '5.2 Derivatives, rules of derivatives, geometrical & physical meanings, higher order derivatives, Applications of derivative: tangent and normal, rate of change, maxima and minima'),
          SubSection(
              text:
                  '5.3 Integration, linear properties, rules of integration, standard integrals, definite integral, Applications of definite integral: area under a curve and area between two curves'),
          SubSection(
              text:
                  '5.4 Differential equations: definition, order and degree, differential equation of first order and first degree: variable separable method, homogeneous, linear and exact differential equations, integrating factor'),
          SectionHeader(text: '6. Vectors and their Products'),
          SubSection(
              text:
                  '6.1 Vectors in plane and space, algebra of vectors, linear combination of vectors, linearly dependent and independent set of vectors'),
          SubSection(
              text:
                  '6.2 Product of two vectors, scalar and vector product of two vectors, scalar triple product'),
          SectionHeader(text: '7. Statistics and Probability'),
          SubSection(
              text: '7.1 Measures of location and measures of dispersion'),
          SubSection(text: '7.2 Correlation and regression'),
          SubSection(
              text:
                  '7.3 Basic terms of probability, conditional and compound probability, additive and multiplicative rules, Bayes’ theorem, binomial distribution'),
          SizedBox(height: 10),
          SectionHeader(text: 'Physics'),
          SectionHeader(text: '1. Mechanics'),
          SubSection(
              text:
                  '1.1 Physical Quantities, Vector and Kinematics: Dimensions, Resolution and Polygon laws of Vector, Vector Algebra, Equations of Motions, Projectile Motion, Relative Motion'),
          SubSection(
              text:
                  '1.2 Newton’s Laws of Motion and Friction: Conservation of linear momentum, Applications of Newton’s Laws in Equilibrium and Non-equilibrium, laws of Solid Friction and verification'),
          SubSection(
              text:
                  '1.3 Work, Energy and Power: Work-Energy theorem, Kinetic and Potential energy, Conservation of Energy, Conservative and non-conservative forces, Elastic and inelastic collisions'),
          SubSection(
              text:
                  '1.4 Circular motion, Gravitation and SHM: Centripetal force, Conical Pendulum, Banking of Track, Gravitational Potential, variation of g, Motion of satellite, Rocket launch technology, Energy in SHM, Spring-Mass system, simple Pendulum, Damped and Forced oscillation, resonance'),
          SubSection(
              text:
                  '1.5 Rotational Dynamics: Moment of Inertia, Radius of Gyration, Rotational KE, Center of gravity and center of mass, Torque, Conservation of Angular momentum'),
          SubSection(
              text:
                  '1.6 Elasticity: Hook’s law, Young modulus, Bulk modulus, modulus of rigidity, Poissons’ ratio, elastic energy'),
          SubSection(
              text:
                  '1.7 Fluid Mechanics: buoyancy, flotation, Archimedes’ principle, surface tension, capillarity and applications, viscosity, Newton, Stoke and Poiseuille’s formula, Reynold number, continuity equation, Bernoulli’s equation'),
          SectionHeader(text: '2. Heat and Thermodynamics'),
          SubSection(
              text:
                  '2.1 Temperature and Quantity of Heat: Thermal Equilibrium, Specific heat, latent heat Method of Mixture, Measurement of specific heat and latent heat, Newton’s law of cooling, triple point'),
          SubSection(
              text:
                  '2.2 Thermal expansion: Expansion of Solid & Liquid, Measurement and Applications of expansions'),
          SubSection(
              text:
                  '2.3 Transfer of Heat: Conduction, Convection, Radiation, Thermal Conductivity, Black body radiation, Stefan-Boltzmann law'),
          SubSection(
              text:
                  '2.4 Thermal properties of Matter: Molecular Properties of matter, Kinetic Theory of gases, heat capacities of gases and solids'),
          SubSection(
              text:
                  '2.5 Laws of Thermodynamics: First law, Heat and Work, relation of specific heat of gas, thermodynamics processes, Second law, Heat engine, efficiency, Carnot Cycle, Otto Cycle, Diesel cycle, Refrigerator, Entropy'),
          SectionHeader(text: '3. Geometric and Physical Optics'),
          SubSection(
              text: '3.1 Reflection: Plane and Curved Mirror, Mirror Formula'),
          SubSection(
              text:
                  '3.2 Refraction: Plane Surface, Critical Angle, Total Internal Reflection, Lateral shift, Prism, Minimum Deviation, Lenses, Lens Formula, Lens maker’s formula, Combination of lenses in contact, Optical Fiber'),
          SubSection(
              text:
                  '3.3 Dispersion: Spectrum, Dispersive Power, Chromatic Aberration, Achromatism, Spherical Aberration, Scattering of light'),
          SubSection(
              text:
                  '3.4 Nature and Propagation of Light: Huygen’s principle, Velocity of light'),
          SubSection(
              text:
                  '3.5 Interference: Coherent sources, Young’s double slit experiment'),
          SubSection(
              text:
                  '3.6 Diffraction: Fraunhoffer diffraction, Diffraction grating, Resolving power'),
          SubSection(
              text:
                  '3.7 Polarization: Brewster’s law, Transverse nature of light, Polaroid'),
          SectionHeader(text: '4. Waves and Sound'),
          SubSection(text: '4.1 Wave Motion: Travelling and Stationary wave'),
          SubSection(
              text:
                  '4.2 Mechanical Waves: velocity of sound in solid, gas and liquid, effect of temperature, pressure, humidity'),
          SubSection(
              text:
                  '4.3 Waves in Pipes and String: closed and Open pipes, Resonance, Resonance Tube, string, laws of vibration of fixed string'),
          SubSection(
              text:
                  '4.4 Acoustic Phenomena: Pressure amplitude, intensity level, quality and pitch, Ultrasonic and Infrasonic, Doppler’s effect'),
          SectionHeader(text: '5. Electricity & Magnetism'),
          SubSection(
              text:
                  '5.1 Electrostatics: Coulomb’s law, Electric field and Gauss law, Potential and potential gradient, Capacitors, combination of capacitors, types of capacitors, effect of dielectrics, Energy stored by capacitors, polarization and displacement'),
          SubSection(
              text:
                  '5.2 DC Circuits: Ohm’s law, resistivity and conductivity, work and power, Galvanometer and Ohm meter, internal resistance, Joule’s law, Kirchhoff’s law and applications'),
          SubSection(
              text:
                  '5.3 Thermoelectric Effect: Seebeck effect, Thermocouples, Peltier effect, Thermopile, Thomson effect'),
          SubSection(
              text:
                  '5.4 Magnetic effect: Force on a conductor and charge, Torque, Hall’s effect, Biot-Savart’s law, Ampere’s law, Force between parallel conductors'),
          SubSection(
              text:
                  '5.5 Magnetic properties of matter: Earth magnetism, magnetic materials, permeability, susceptibility, hysteresis'),
          SubSection(
              text:
                  '5.6 Electromagnetic Induction: Faraday’s law, Induced emf, AC Generators, Self and mutual induction, energy stored by inductor, transformer'),
          SubSection(
              text:
                  '5.7 Alternating Currents: RMS value, Phasor diagram of capacitance, inductance and resistance, Quality factor, Power factor'),
          SectionHeader(text: '6. Modern Physics'),
          SubSection(
              text:
                  '6.1 Electrons: Millikons’ experiment, Cathode rays, specific charge'),
          SubSection(
              text:
                  '6.2 Photons & Quantization of Energy: Photoelectric effect, Plank’s constant, Bohr’s theory, spectral series, De Broglie theory, Uncertainty principle, X-ray and Bragg’s law, Laser'),
          SubSection(
              text:
                  '6.3 Solids & Semiconductor Devices: Intrinsic and extrinsic semiconductors, P-N junction, Rectification, Zener diode, Transistor, Logic gates'),
          SubSection(
              text:
                  '6.4 Radioactivity & Nuclear Reaction: Atomic mass, Isotopes, Nuclear density, Einstein’s mass energy relation, mass defect, fission & fusion, law of radioactive disintegration, carbon dating, health hazard'),
          SubSection(text: '6.5 Recent Trends in Physics'),
          SubSection(
              text:
                  '6.5.1 Particle Physics: Particle and anti-particle, Quarks, Lepton, Baryon, Mesons, Higgs Boson'),
          SubSection(
              text:
                  '6.5.2 Universe: Big Bang and Hubble’s Law, Dark Matter, Gravitational Wave, Black Hole'),
          SubSection(
              text:
                  '6.5.3 Seismology: Pressure wave, Surface Wave, Internal wave'),
          SubSection(
              text:
                  '6.5.4 Telecommunication: Radio, TV and Mobile, GPS and Remote sensing'),
          SubSection(
              text:
                  '6.5.5 Environment: Energy Crisis, Environment Pollution, Ozone Layer'),
          SubSection(
              text:
                  '6.5.6 New Technology & Materials: Nano-technology, super conductor & Perfect conductor'),
          SizedBox(height: 10),
          SectionHeader(text: 'Chemistry'),
          SectionHeader(text: '1. Physical Chemistry'),
          SubSection(
              text:
                  '1.1 Chemical Arithmetic: Dalton’s atomic theory and Laws of Stoichiometry, Atomic mass and Molecular mass, Empirical molecular formula and limiting Reactants, Avogadro’s Hypothesis and its applications and Equivalent masses.'),
          SubSection(
              text:
                  '1.2 State of Matter: Gaseous state, liquid and solid states.'),
          SubSection(
              text:
                  '1.3 Atomic Structure and Periodic Classification of Elements'),
          SubSection(text: '1.4 Oxidation, Reduction and Equilibrium'),
          SubSection(text: '1.5 Volumetric Analysis'),
          SubSection(text: '1.6 Ionic Equilibrium, Acid, Base and Salt'),
          SubSection(text: '1.7 Electrochemistry'),
          SubSection(
              text:
                  '1.8 Energetics of Chemical Reactions, Chemical Kinetics, Chemical Bonding and Shape of Molecules'),
          SectionHeader(text: '2. Inorganic Chemistry'),
          SubSection(
              text:
                  '2.1 Non-metals: Hydrogen, Oxygen, Ozone, Water, Nitrogen and its compounds, Halogen, Carbon, Phosphorus, Sulphur, Noble gas and Environment pollution.'),
          SubSection(
              text:
                  '2.2 Metals: Metallurgical Principle, Alkali metal, Alkaline Earth metals, Coinage metals: Copper, Silver, Gold'),
          SubSection(
              text: '2.3 Extraction of Metal: Zinc and Mercury, Iron Compound'),
          SectionHeader(text: '3. Organic Chemistry'),
          SubSection(
              text:
                  '3.1 Introduction: Fundamental principles, Purification of organic compounds, Nomenclature of Organic compounds, Structure isomerism and idea of reaction mechanism'),
          SubSection(
              text:
                  '3.2 Hydrocarbons: Alkanes, Alkenes and Alkynes, Aromatic hydrocarbons'),
          SubSection(text: '3.3 Haloalkanes and Haloarenes'),
          SubSection(text: '3.4 Alcohols, Phenols and Ethers'),
          SubSection(
              text:
                  '3.5 Aldehydes, Ketones, Carboxylic Acid and Derivatives, Aliphatic and Aromatic'),
          SubSection(
              text: '3.6 Nitro Compounds and Amines: Aromatic and Aliphatic'),
          SizedBox(height: 10),
          SectionHeader(text: 'English'),
          SectionHeader(text: 'Grammar I'),
          SubSection(text: '1.1 Sequence of Tense, Concord/Agreement'),
          SubSection(text: '1.2 Direct and Indirect Speech'),
          SubSection(
              text: '1.3 Kinds of Sentences and Transformation of Sentences'),
          SectionHeader(text: 'Grammar II'),
          SubSection(
              text:
                  '2.1 Basic Grammatical Patterns/Structures, Conditional Sentences'),
          SubSection(text: '2.2 Parts of Speech, Active and Passive Voice'),
          SubSection(text: '2.3 Verbal: Infinitives, Gerund and Participles'),
          SubSection(text: '2.4 Punctuation and Use of Prepositions'),
          SubSection(text: '2.5 Vocabulary'),
          SubSection(text: '2.6 Idiomatic Expressions'),
          SectionHeader(text: 'Phonetics'),
          SubSection(text: '3.1 Phonemes (Vowels/Consonants)'),
          SubSection(text: '3.2 Syllables and Stress (Word/Sentence)'),
          SectionHeader(text: 'Comprehension'),
          SubSection(
              text:
                  '4.1 Comprehensions of reading passages on a variety of topics and style with special references to General English and Technical English'),

          // Syllabus content here
        ],
      ),
    );
  }

  Widget _buildOldQuestionsTab(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              InsideButtons(
                text: 'Model Question 2075',
                fileSize: '4',
                icon: Icons.question_answer_outlined,
                onTap: () {
                  openPDF(context,
                      'https://notesioe.com/wp-content/uploads/2023/11/IOE-2075-Entrance-Model.pdf');
                },
              ),
              SizedBox(
                height: 10,
              ),
              InsideButtons(
                text: 'Practice Set 1',
                fileSize: '0.6',
                icon: Icons.question_answer_outlined,
                onTap: () {
                  openPDF(context,
                      'https://notesioe.com/wp-content/uploads/2023/11/Very-Important-IOE-practice-set-1.pdf');
                },
              ),
              SizedBox(
                height: 10,
              ),
              InsideButtons(
                text: 'Practice Set 2',
                fileSize: '0.5',
                icon: Icons.question_answer_outlined,
                onTap: () {
                  openPDF(context,
                      'https://notesioe.com/wp-content/uploads/2023/11/Very-Important-IOE-practice-set-2.pdf');
                },
              ),
              SizedBox(
                height: 10,
              ),
              InsideButtons(
                text: 'Practice Set 3',
                fileSize: '0.5',
                icon: Icons.question_answer_outlined,
                onTap: () {
                  openPDF(context,
                      'https://notesioe.com/wp-content/uploads/2023/11/Very-Important-IOE-practice-set-3.pdf');
                },
              ),
              SizedBox(
                height: 10,
              ),
              InsideButtons(
                text: 'Practice Set 4',
                fileSize: '0.6',
                icon: Icons.question_answer_outlined,
                onTap: () {
                  openPDF(context,
                      'https://notesioe.com/wp-content/uploads/2023/11/Very-Important-IOE-practice-set-4.pdf');
                },
              ),
              SizedBox(
                height: 10,
              ),
              InsideButtons(
                text: 'Practice Set 5',
                fileSize: '2',
                icon: Icons.question_answer_outlined,
                onTap: () {
                  openPDF(context,
                      'https://notesioe.com/wp-content/uploads/2023/11/Very-Important-IOE-practice-set-5.pdf');
                },
              ),
              SizedBox(
                height: 10,
              ),
              InsideButtons(
                text: 'Practice Set 6',
                fileSize: '0.6',
                icon: Icons.question_answer_outlined,
                onTap: () {
                  openPDF(context,
                      'https://notesioe.com/wp-content/uploads/2023/11/Very-Important-IOE-practice-set-6.pdf');
                },
              ),
              SizedBox(
                height: 10,
              ),
              InsideButtons(
                text: 'Practice Set 7',
                fileSize: '0.6',
                icon: Icons.question_answer_outlined,
                onTap: () {
                  openPDF(context,
                      'https://notesioe.com/wp-content/uploads/2023/11/Very-Important-IOE-practice-set-7.pdf');
                },
              ),
              SizedBox(
                height: 10,
              ),
              InsideButtons(
                text: 'Practice Set 8',
                fileSize: '0.5',
                icon: Icons.question_answer_outlined,
                onTap: () {
                  openPDF(context,
                      'https://notesioe.com/wp-content/uploads/2023/11/Very-Important-IOE-practice-set-8.pdf');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
