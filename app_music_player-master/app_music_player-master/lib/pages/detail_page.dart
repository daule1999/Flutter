import 'package:flutter/material.dart';
import '../core/const.dart';
// import 'package:app_music_player/widgets/custom_button.dart';
// import 'package:app_music_player/widgets/custom_indicator.dart';

class DetailPage extends StatefulWidget {
  final int playid;

  DetailPage(this.playid);
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  var _value = 0.0;
  var isPlay;

  @override
  void initState() {
    isPlay = true;
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 250),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
