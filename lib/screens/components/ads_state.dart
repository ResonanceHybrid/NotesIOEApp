import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';

class AdState {
  Future<InitializationStatus> initialization;
  AdState(this.initialization);

  String get bannerAdUnitId => Platform.isAndroid
      ? 'ca-app-pub-3940256099942544/9214589741'
      : 'ca-app-pub-3940256099942544/6300978111';

  String get interstitialAdUnitId => Platform.isAndroid
      ? 'ca-app-pub-3940256099942544/8691691433'
      : 'ca-app-pub-3940256099942544/1033173712';

  BannerAdListener get bannerAdListener => _bannerAdListener;

  final BannerAdListener _bannerAdListener = BannerAdListener(
    onAdLoaded: (Ad ad) {
      print('Banner Ad loaded: ${ad.adUnitId}.');
    },
    onAdFailedToLoad: (Ad ad, LoadAdError error) {
      print('Banner Ad failed to load: ${ad.adUnitId}, Error: $error');
    },
    onAdOpened: (Ad ad) {
      print('Banner Ad opened: ${ad.adUnitId}.');
    },
    onAdClosed: (Ad ad) {
      print('Banner Ad closed: ${ad.adUnitId}.');
    },
    onAdImpression: (Ad ad) {
      print('Banner Ad impression: ${ad.adUnitId}.');
    },
    onAdClicked: (Ad ad) {
      print('Banner Ad clicked: ${ad.adUnitId}.');
    },
    onAdWillDismissScreen: (Ad ad) {
      print('Banner Ad will dismiss screen: ${ad.adUnitId}.');
    },
  );

  InterstitialAd? _interstitialAd;

  void loadInterstitialAd() {
    InterstitialAd.load(
      adUnitId: interstitialAdUnitId,
      request: AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (InterstitialAd ad) {
          print('Interstitial Ad loaded: ${ad.adUnitId}.');
          _interstitialAd = ad;
          _interstitialAd!.setImmersiveMode(true);
        },
        onAdFailedToLoad: (LoadAdError error) {
          print('Interstitial Ad failed to load: $error');
          _interstitialAd = null;
        },
      ),
    );
  }

  void showInterstitialAd() {
    if (_interstitialAd != null) {
      _interstitialAd!.show();
      _interstitialAd = null; // Load a new ad for next time
    } else {
      print("Interstitial Ad wasn't ready yet.");
      loadInterstitialAd(); // Attempt to load another ad
    }
  }
}

class BannerAdWidget extends StatefulWidget {
  @override
  _BannerAdWidgetState createState() => _BannerAdWidgetState();
}

class _BannerAdWidgetState extends State<BannerAdWidget> {
  late BannerAd banner;

  @override
  void initState() {
    super.initState();
    final adState = Provider.of<AdState>(context, listen: false);
    banner = BannerAd(
      adUnitId: adState.bannerAdUnitId,
      size: AdSize.banner,
      request: AdRequest(),
      listener: BannerAdListener(),
    )..load();
  }

  @override
  void dispose() {
    banner.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Full width
      height: 50,
      child: AdWidget(ad: banner),
    );
  }
}
