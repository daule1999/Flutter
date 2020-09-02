import 'package:flutter/material.dart';
import '../core/const.dart';

import '../models/music_model.dart';

import 'detail_page.dart';
// import 'package:app_music_player/widgets/custom_button.dart';
// import 'package:app_music_player/widgets/custom_button.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<MusicModel> _list;
  int _playId;

  @override
  void initState() {
    _playId = 3;
    _list = MusicModel.list;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Center(
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(200),
            ),
            border: Border.all(
              width: 2,
              color: AppColors.darkBlue,
            ),
            boxShadow: [
              BoxShadow(color: AppColors.lightBlueShadow),
            ],
          ),
        ),
      ),
    );
  }
}
// backgroundColor: AppColors.mainColor,
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: AppColors.mainColor,
//         title: Row(
//           mainAxisSize: MainAxisSize.min,
//           children: <Widget>[
//             Text(
//               "skin",
//               style: TextStyle(
//                 color: AppColors.styleColor,
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.symmetric(
//                 horizontal: 10,
//               ),
//               width: 5,
//               height: 5,
//               decoration: BoxDecoration(
//                 color: AppColors.styleColor,
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(50),
//                 ),
//               ),
//             ),
//             Text(
//               "Flume",
//               style: TextStyle(color: AppColors.styleColor),
//             ),
//           ],
//         ),
//         centerTitle: true,
//       ),
//       body: Stack(
//         children: <Widget>[
//           Column(
//             children: <Widget>[
//               Padding(
//                 padding: EdgeInsets.all(24.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     CustomButton(
//                       onTap: () {},
//                       child: Icon(
//                         Icons.favorite,
//                         color: AppColors.styleColor,
//                       ),
//                     ),
//                     Hero(
//                       tag: 'image_view',
//                       child: CustomButton(
//                         onTap: () {
//                           Navigator.of(context).push(
//                             MaterialPageRoute(
//                               builder: (_) => DetailPage(_playId),
//                             ),
//                           );
//                         },
//                         size: 150,
//                         borderWidth: 5,
//                         image: "assets/logo.jpg",
//                       ),
//                     ),
//                     CustomButton(
//                       onTap: () {},
//                       child: Icon(
//                         Icons.menu,
//                         color: AppColors.styleColor,
//                       ),
//                       size: 50,
//                     ),
//                   ],
//                 ),
//               ),
//               Expanded(
//                 child: ListView.builder(
//                   physics: BouncingScrollPhysics(),
//                   itemCount: _list.length,
//                   padding: EdgeInsets.all(12),
//                   itemBuilder: (context, index) {
//                     return GestureDetector(
//                       onTap: () {
//                         Navigator.of(context).push(
//                           MaterialPageRoute(
//                             builder: (_) => DetailPage(_playId),
//                           ),
//                         );
//                       },
//                       child: AnimatedContainer(
//                         duration: Duration(
//                           milliseconds: 500,
//                         ),
//                         padding: EdgeInsets.all(16),
//                         decoration: BoxDecoration(
//                           color: _list[index].id == _playId
//                               ? AppColors.activeColor
//                               : AppColors.mainColor,
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(20),
//                           ),
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: <Widget>[
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: <Widget>[
//                                 Text(
//                                   _list[index].title,
//                                   style: TextStyle(color: AppColors.styleColor),
//                                 ),
//                                 Text(
//                                   _list[index].album,
//                                   style: TextStyle(
//                                     color: AppColors.styleColor.withAlpha(90),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             CustomButton(
//                               onTap: () {
//                                 setState(
//                                   () {
//                                     _playId = _list[index].id;
//                                   },
//                                 );
//                               },
//                               child: Icon(
//                                 _list[index].id == _playId
//                                     ? Icons.pause
//                                     : Icons.play_arrow,
//                                 color: _list[index].id == _playId
//                                     ? Colors.white
//                                     : AppColors.styleColor,
//                               ),
//                               size: 50,
//                               isActive: _list[index].id == _playId,
//                             ),
//                           ],
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Container(
//               height: 50,
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [
//                     AppColors.mainColor.withAlpha(0),
//                     AppColors.mainColor.withAlpha(50),
//                     AppColors.mainColor,
//                   ],
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
