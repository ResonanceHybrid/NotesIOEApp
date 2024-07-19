// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';
// //import 'package:provider/provider.dart';
// import 'package:connectivity_plus/connectivity_plus.dart';

// class AdState {
//   Future<InitializationStatus> initialization;
//   AdState(this.initialization);

//   String get bannerAdUnitId => Platform.isAndroid
//       ? 'ca-app-pub-3940256099942544/9214589741'
//       : 'ca-app-pub-4177252830441345/3541288907';

//   String get interstitialAdUnitId => Platform.isAndroid
//       ? 'ca-app-pub-3940256099942544/1033173712'
//       : 'ca-app-pub-4177252830441345/6610305373';

//   BannerAdListener get bannerAdListener => _bannerAdListener;

//   final BannerAdListener _bannerAdListener = BannerAdListener(
//     onAdLoaded: (Ad ad) {
//       print('Banner Ad loaded: ${ad.adUnitId}.');
//     },
//     onAdFailedToLoad: (Ad ad, LoadAdError error) {
//       print('Banner Ad failed to load: ${ad.adUnitId}, Error: $error');
//     },
//     onAdOpened: (Ad ad) {
//       print('Banner Ad opened: ${ad.adUnitId}.');
//     },
//     onAdClosed: (Ad ad) {
//       print('Banner Ad closed: ${ad.adUnitId}.');
//     },
//     onAdImpression: (Ad ad) {
//       print('Banner Ad impression: ${ad.adUnitId}.');
//     },
//     onAdClicked: (Ad ad) {
//       print('Banner Ad clicked: ${ad.adUnitId}.');
//     },
//     onAdWillDismissScreen: (Ad ad) {
//       print('Banner Ad will dismiss screen: ${ad.adUnitId}.');
//     },
//   );

//   InterstitialAd? _interstitialAd;

//   void loadInterstitialAd() async {
//     var connectivityResult = await (Connectivity().checkConnectivity());
//     if (connectivityResult != ConnectivityResult.none) {
//       InterstitialAd.load(
//         adUnitId: interstitialAdUnitId,
//         request: AdRequest(),
//         adLoadCallback: InterstitialAdLoadCallback(
//           onAdLoaded: (InterstitialAd ad) {
//             print('Interstitial Ad loaded: ${ad.adUnitId}.');
//             _interstitialAd = ad;
//             _interstitialAd!.setImmersiveMode(true);
//           },
//           onAdFailedToLoad: (LoadAdError error) {
//             print('Interstitial Ad failed to load: $error');
//             _interstitialAd = null;
//           },
//         ),
//       );
//     } else {
//       print("No internet connection. Cannot load Interstitial Ad.");
//     }
//   }

//   void showInterstitialAd() {
//     if (_interstitialAd != null) {
//       _interstitialAd!.show();
//       _interstitialAd = null; // Load a new ad for next time
//     } else {
//       print("Interstitial Ad wasn't ready yet.");
//       loadInterstitialAd(); // Attempt to load another ad
//     }
//   }
// }

// class BannerAdWidget extends StatefulWidget {
//   @override
//   _BannerAdWidgetState createState() => _BannerAdWidgetState();

//   static Future<bool> isInternetConnected() async {
//     var connectivityResult = await (Connectivity().checkConnectivity());
//     return connectivityResult != ConnectivityResult.none;
//   }
// }

// class _BannerAdWidgetState extends State<BannerAdWidget> {
//   BannerAd? banner;
//   bool _isAdLoaded = false;

//   @override
//   void initState() {
//     super.initState();
//     checkInternetAndLoadAd();
//   }

//   void checkInternetAndLoadAd() async {
//     var connectivityResult = await (Connectivity().checkConnectivity());
//     if (connectivityResult != ConnectivityResult.none) {
//       final adState = Provider.of<AdState>(context, listen: false);
//       banner = BannerAd(
//         adUnitId: adState.bannerAdUnitId,
//         size: AdSize.banner,
//         request: AdRequest(),
//         listener: BannerAdListener(
//           onAdLoaded: (Ad ad) {
//             print('Banner Ad loaded: ${ad.adUnitId}.');
//             setState(() {
//               _isAdLoaded = true;
//             });
//           },
//           onAdFailedToLoad: (Ad ad, LoadAdError error) {
//             print('Banner Ad failed to load: ${ad.adUnitId}, Error: $error');
//             setState(() {
//               _isAdLoaded = false;
//             });
//             ad.dispose();
//           },
//         ),
//       )..load();
//     } else {
//       print("No internet connection. Cannot load Banner Ad.");
//       setState(() {
//         _isAdLoaded = false;
//       });
//     }
//   }

//   @override
//   void dispose() {
//     banner?.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return _isAdLoaded
//         ? Container(
//             width: double.infinity, // Full width
//             height: 50,
//             child: AdWidget(ad: banner!),
//           )
//         : SizedBox.shrink(); // Return a widget that takes no space
//   }
// }
