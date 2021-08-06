

import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 200,
        child: Image.network(
          'https://houstonfoodfinder.com/wp-content/uploads/2019/09/TIPPING-POINT-RESTAURANT-and-TERRACE-for-Memorial-City-Date-Night-Out_Photo-by-Mike-ONeill_Resized-for-HFF-1024x640.png',
          fit: BoxFit.cover,
        ));
  }
}
