import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/utils/dimensions.dart';
import 'package:flutter_application_1/widgets/small_text.dart';

class ExandableTextWidget extends StatefulWidget {
  final String text;
  const ExandableTextWidget({super.key, required this.text});
  
  @override
  State<ExandableTextWidget> createState() => _ExandableTextWidgetState();
}

class _ExandableTextWidgetState extends State<ExandableTextWidget> {
  late String firsrHalf;
  late String secondHalf;

  bool hiddenText=true;

  double textHeight = Dimensions.screenHeight/5.63;

  @override
  void initState(){
    super.initState();
    if(widget.text.length>textHeight){
      firsrHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf = widget.text.substring(textHeight.toInt()+1, widget.text.length);
    }else{
      firsrHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty?SmallText(color:AppColor.paraColor, size: Dimensions.font16, text: firsrHalf):Column(
        children: [
          SmallText(height: 1.8, color:AppColor.paraColor, size: Dimensions.font16, text: hiddenText?(firsrHalf+"..."):(firsrHalf+secondHalf)), 
          InkWell(
            onTap: (){
              setState(() {
                hiddenText=!hiddenText;
              });

            },
            child:  Row(
              children: [
                SmallText(text: "Mostrar más",color: AppColor.mainColor,),
                Icon(hiddenText?Icons.arrow_drop_down:Icons.arrow_drop_up, color: AppColor.mainColor)
              ],
            ),
          )
        ],
      ),
    );
  }
}