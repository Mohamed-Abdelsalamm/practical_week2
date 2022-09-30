import 'package:flutter/material.dart';

class ButtonSquare extends StatelessWidget {
  ButtonSquare({Key? key,this.height=50,this.wight=50, required this.function, required this.name,this.buttonColor=Colors.blueGrey,this.size=14}) : super(key: key);

  int? value;
  double? size;
  double? height;
  double? wight;
  String? name;
  Color? buttonColor;
  void Function() function;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: wight,
      height: height,
      child: RaisedButton(
        onPressed: function,
        color: buttonColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            '$name',
            maxLines: 1,
            style: TextStyle(
              color: Colors.white,
              fontSize: size,
            ),
          ),
        ),
      ),
    );
  }
}
