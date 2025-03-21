import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/utils/dimensions.dart';
import 'package:flutter_application_1/widgets/app_columns.dart';
import 'package:flutter_application_1/widgets/app_icon.dart';
import 'package:flutter_application_1/widgets/big_text.dart';
import 'package:flutter_application_1/widgets/exandable_text_widget.dart';
import 'package:flutter_application_1/widgets/icon_and_text_widget.dart';
import 'package:flutter_application_1/widgets/small_text.dart';

class PopularDetail extends StatelessWidget {
  const PopularDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImgSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/image/food1.png"),
                ),
              ),
            )),
          //Icon Widget
          Positioned(
            top: Dimensions.width45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            )),
            //Introduce of food
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularFoodImgSize-20,
              child: Container(

                padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, top: Dimensions.height20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20),
                  ),
                  color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(text: "Sushi de Progreso"),
                    SizedBox(height: Dimensions.height20),
                    BigText(text: "Introducción"),
                    SizedBox(height: Dimensions.height20),
                    Expanded(child: SingleChildScrollView(child: ExandableTextWidget(text: "El Sushi de Progreso es una exquisita combinación de ingredientes frescos y sabores equilibrados. Preparado con arroz de sushi perfectamente aliñado, envuelve una suculenta porción de atún rojo, aguacate cremoso y pepino crujiente. Su cobertura de salmón ligeramente flameado le aporta un toque ahumado irresistible, mientras que un ligero aderezo de mayonesa de wasabi realza su intensidad de sabor. Cada bocado es una explosión de texturas y matices, desde la suavidad del pescado hasta la sutil acidez del arroz, todo complementado con un toque de salsa de anguila. Acompañado de jengibre encurtido y una pizca de wasabi, este sushi se convierte en una experiencia gastronómica inolvidable, ideal para los amantes de la comida japonesa.",)))
                  ],
                ),  

            ))
            //Exandable Text Widget
        ],
      ),
     bottomNavigationBar: Container(
      height: Dimensions.bottomHeightBar,
      padding: EdgeInsets.only(top: Dimensions.height10, bottom: Dimensions.height10, left:Dimensions.width20, right: Dimensions.width20),
      decoration: BoxDecoration(
        color: AppColor.buttonBackgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Dimensions.radius20*2),
          topRight: Radius.circular(Dimensions.radius20*2)
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(top: Dimensions.height10, bottom: Dimensions.height10, left: Dimensions.width20, right: Dimensions.width20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius20),
              color: Colors.white
            ),
            child: Row(
              children: [
                Icon(Icons.remove, color: AppColor. signColor,),
                SizedBox(width: Dimensions.width10/2,),
                BigText(text: "0"),
                SizedBox(width: Dimensions.width10/2,),
                Icon(Icons.add, color: AppColor.signColor,)
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: Dimensions.height10, bottom: Dimensions.height10, left: Dimensions.width20, right: Dimensions.width20),
            child: BigText(text: "\$10 | Add to cart ", color: Colors.white,),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius20),
              color: AppColor.mainColor
            ),
          )
        ],
      ),
     ), 
    );
  }
}