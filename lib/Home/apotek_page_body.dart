import 'package:flutter/material.dart';
import 'package:pharmacystore/Utils/colors.dart';
import 'package:pharmacystore/Widget/big_text.dart';
import 'package:pharmacystore/Widget/small_text.dart';

class ApotekPageBody extends StatefulWidget {
  const ApotekPageBody({super.key});

  @override
  _ApotekPageBodyState createState() => _ApotekPageBodyState();
}

class _ApotekPageBodyState extends State<ApotekPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      height: 320,
      child: PageView.builder(
        controller: pageController,
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
          height: 220,
          margin: EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color(0xFF69c5df),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/image/apotek1.png"),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 120,
            margin: EdgeInsets.only(left: 30, right: 30, bottom: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
              
            ),
            child: Container(
              padding: EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: "Paracetamol"),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(5, (index) {return Icon(Icons.star, color: AppColors.mainColor, size: 15,);}),
                      ),
                      SizedBox(width: 10,),
                      SmallText(text: "4.5"),
                      SizedBox(width: 10,),
                      SmallText(text: "1287"),
                      SizedBox(width: 10,),
                      SmallText(text: "comments")
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
