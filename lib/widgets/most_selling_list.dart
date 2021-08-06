import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/const/fonts.dart';
import 'package:untitled3/const/strings.dart';

class MostSelling extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (ctx, int) => Container(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(mostSellingBold,style: TextStyle(fontSize: 20,fontWeight:bold),),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(superKoshary,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                  ),
                  Text(priceOnSelection,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)
                ],
              ),
            ),
            Image.network(
              'https://houstonfoodfinder.com/wp-content/uploads/2019/09/TIPPING-POINT-RESTAURANT-and-TERRACE-for-Memorial-City-Date-Night-Out_Photo-by-Mike-ONeill_Resized-for-HFF-1024x640.png',
              height: 70,
            )
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
      ),
      separatorBuilder: (cxt, int) => Divider(),
      itemCount: 6,
      physics: BouncingScrollPhysics(),
    );
  }
}
