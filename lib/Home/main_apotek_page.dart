import 'package:flutter/material.dart';
import 'package:pharmacystore/Home/apotek_page_body.dart';
import 'package:pharmacystore/Widget/big_text.dart';
import 'package:pharmacystore/Widget/small_text.dart';

import '../Utils/colors.dart';

class MainApotekPage extends StatefulWidget{
  const MainApotekPage({Key? key}) : super(key: key);

  @override
  _MainApotekPageState createState() => _MainApotekPageState();
}

class _MainApotekPageState extends State<MainApotekPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(top: 45, bottom: 15),
              padding: EdgeInsets.only(left: 20, right:20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: "Indonesia", color: AppColors.mainColor),
                      Row(
                        children: [
                          SmallText(text: "Malang", color: Colors.black54),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      width: 45,
                      height: 45,
                      child: Icon(Icons.search, color:Colors.white),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.mainColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ApotekPageBody(),
        ],
      ),
    );
  }
}