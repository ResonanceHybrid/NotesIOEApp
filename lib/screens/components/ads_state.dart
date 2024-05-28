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

  String get rewardedAdUnitId => Platform.isAndroid
      ? 'ca-app-pub-3940256099942544/5224354917'
      : 'ca-app-pub-3940256099942544/5354046379';

  BannerAdListener get bannerAdListener => _bannerAdListener;
  // InterstitialAdListener get interstitialAdListener => _interstitialAdListener;
  // RewardedAdListener get rewardedAdListener => _rewardedAdListener;

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

  // final InterstitialAdListener _interstitialAdListener = InterstitialAdListener(
  //   onAdLoaded: (Ad ad) {
  //     print('Interstitial Ad loaded: ${ad.adUnitId}.');
  //   },
  //   onAdFailedToLoad: (Ad ad, LoadAdError error) {
  //     print('Interstitial Ad failed to load: ${ad.adUnitId}, Error: $error');
  //   },
  //   onAdOpened: (Ad ad) {
  //     print('Interstitial Ad opened: ${ad.adUnitId}.');
  //   },
  //   onAdClosed: (Ad ad) {
  //     print('Interstitial Ad closed: ${ad.adUnitId}.');
  //   },
  //   onAdImpression: (Ad ad) {
  //     print('Interstitial Ad impression: ${ad.adUnitId}.');
  //   },
  //   onAdClicked: (Ad ad) {
  //     print('Interstitial Ad clicked: ${ad.adUnitId}.');
  //   },
  // );

  // final RewardedAdListener _rewardedAdListener = RewardedAdListener(
  //   onAdLoaded: (Ad ad) {
  //     print('Rewarded Ad loaded: ${ad.adUnitId}.');
  //   },
  //   onAdFailedToLoad: (Ad ad, LoadAdError error) {
  //     print('Rewarded Ad failed to load: ${ad.adUnitId}, Error: $error');
  //   },
  //   onAdOpened: (Ad ad) {
  //     print('Rewarded Ad opened: ${ad.adUnitId}.');
  //   },
  //   onAdClosed: (Ad ad) {
  //     print('Rewarded Ad closed: ${ad.adUnitId}.');
  //   },
  //   onAdImpression: (Ad ad) {
  //     print('Rewarded Ad impression: ${ad.adUnitId}.');
  //   },
  //   onAdClicked: (Ad ad) {
  //     print('Rewarded Ad clicked: ${ad.adUnitId}.');
  //   },
  //   onUserEarnedReward: (Ad ad, RewardItem reward) {
  //     print('User earned reward: ${reward.amount} ${reward.type}');
  //   },
  // );
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
