import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home/food_page_body.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/utils/dimensions.dart';
import 'package:flutter_application_1/widgets/big_text.dart';
import 'package:flutter_application_1/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //Monstrando el encabezado
        children: [
          Container(
            child: Container(
              margin: const EdgeInsets.only(top: 45, bottom: 15),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: "Mexico", color: AppColor.mainColor),
                      Row(
                        children: [
                          SmallText(text: "Merida", color: AppColor.textColor),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      width: Dimensions.width45,
                      height: Dimensions.width45,
                      child: Icon(Icons.search, color: Colors.white, size:Dimensions.iconSize24),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColor.mainColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: SingleChildScrollView(
            child:  FoodPageBody(),
          ))
        ],
      ),
    );
  }
}