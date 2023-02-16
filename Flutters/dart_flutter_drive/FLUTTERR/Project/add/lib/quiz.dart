import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Quiz_Page extends StatefulWidget {
  const Quiz_Page({super.key});

  @override
  State<Quiz_Page> createState() => _Quiz_PageState();
}

class _Quiz_PageState extends State<Quiz_Page> {
  int _counter = 0;
  late BannerAd _bannerAd;
  bool _isAdLoaded = false;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Void initState() {
    super.initState();
    _initBannerAd();
  }

  _initBannerAd() {
    _bannerAd = BannerAd(
        size: AdSize.banner,
        adUnitId: BannerAd.testAdUnitId,
        listener: BannerAdListener(
          onAdLoaded: (ad) {
            setState(() {
              _isAdLoaded = true;
            });
          },
          onAdFailedToLoad: (ad, error) {},
        ),
        request: AdRequest());

    _bannerAd.load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '$_counter',
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'increment',
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: _isAdLoaded
          ? Container(
              height: _bannerAd.size.height.toDouble(),
              width: _bannerAd.size.width.toDouble(),
              child: AdWidget(ad: _bannerAd),
            )
          : SizedBox(),
    );
  }
}
