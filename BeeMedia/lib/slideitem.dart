import 'package:flutter/material.dart';
import 'package:ruanghr/slide.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Image.asset(slideList[index].imageUrl,
            alignment: Alignment.center,
          fit: BoxFit.contain,),
        )

        //di yt di isi text

      ],
    );
  }
}
