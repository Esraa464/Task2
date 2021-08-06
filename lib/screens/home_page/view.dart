import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:untitled3/const/clolors.dart';
import 'package:untitled3/const/strings.dart';
import 'package:untitled3/widgets/image_container.dart';
import 'package:untitled3/widgets/info_column.dart';
import 'package:untitled3/widgets/most_selling_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey[300],
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: CircleAvatar(
                  backgroundColor: white,
                  radius: 15,
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 25,
                  )),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: CircleAvatar(
                backgroundColor: white,
                radius: 15,
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 25,
                )),
          ),
        ],
      ),
      body: Column(

        children: [
         ImageContainer(),
           InfoColumn(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 11),
            child: Row(
              children: [
                Icon(
                  Icons.menu,
                  color: purple,
                ),
                Expanded(
                  child: TabBar(
                    controller: controller,
                    tabs: [Text(mostSelling,style: TextStyle(color: Colors.black),), Text(summerOffers,style: TextStyle(color: Colors.black),)],
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: purple,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(11),
              child: TabBarView(
                controller: controller,
                children: [
                 MostSelling(),
                  Icon(Icons.settings),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
