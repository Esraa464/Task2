

import 'package:flutter/material.dart';
import 'package:untitled3/const/clolors.dart';
import 'package:untitled3/const/fonts.dart';
import 'package:untitled3/const/strings.dart';

class InfoColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(11),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                kosharyGodoo,
                style: TextStyle(fontWeight: bold, fontSize: 20),
              ),
              Text(
                info,
                style: TextStyle(
                    color: purple,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5,bottom: 11),
            child: Text(
              pastaKoshary,
              style: TextStyle(
                  color: grey, fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Row(
              children: [
                Image.network(
                  'https://cdn.imgbin.com/7/14/12/imgbin-smiley-computer-icons-emoticon-barricades-smiley-emoji-qqKz2sQCJN3FcMevpJsLFNcLB.jpg',
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: RichText(
                      text: TextSpan(
                        text: veryGood,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 13),
                      )),
                ),
                RichText(
                  text: TextSpan(
                      text: basedIn,
                      style: TextStyle(color: Colors.grey, fontSize: 13)),
                ),
                SizedBox(
                  width: 33,
                ),
                Text(
                  reviews,
                  style: TextStyle(
                      color: purple,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          Divider(
            color: grey[400],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Row(
              children: [
                Icon(
                  Icons.access_time,
                  size: 19,
                ),
                RichText(
                    text: TextSpan(
                      text: within24,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 13),
                    )),
                RichText(
                  text: TextSpan(
                      text: egp4,
                      style: TextStyle(color: Colors.grey, fontSize: 13)),
                ),
              ],
            ),
          ),
          Divider(
            color: grey[400],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Icon(
                  Icons.note,
                  size: 17,
                  color: Colors.red,
                ),
                RichText(
                    text: TextSpan(
                      text: discountsAvailable,
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w600,
                          fontSize: 13),
                    )),
                SizedBox(
                  width: 39,
                ),
                Text(
                  more,
                  style: TextStyle(
                      color: purple,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          Container(
            height: 25,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                deliveredByUs,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
