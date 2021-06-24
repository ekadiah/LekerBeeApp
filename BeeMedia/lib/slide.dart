import 'package:flutter/material.dart';

class Slide{
  final String imageUrl;

  Slide({
    @required this.imageUrl,

});
}

final slideList = [
  Slide(
    imageUrl: 'assets/job.png',
  ),

  Slide(
    imageUrl: 'assets/candidate.png',
  ),

  Slide(
    imageUrl: 'assets/join.png',
  ),

];