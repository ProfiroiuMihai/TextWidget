import 'package:flutter/material.dart';


enum TextStyles {
  toolbar,
  titleOnboarding,
  titleBold,
  normal,
}

class TextWidget extends StatelessWidget {
  String text;
  TextStyles styles;
  TextAlign textAlign;
  int maxLines;
  double fontSize;
  Color color;
  FontWeight fontWeight;
  String font;
  TextDecoration decoration;
  double letterSpacing;
  final double fontSizeDefault = 14;

  TextWidget(text,
      {styles,
        this.textAlign = TextAlign.start,
        this.maxLines = 1,
        this.fontSize = 0.0,
        this.color = Colors.black,
        this.fontWeight = FontWeight.w400,
        this.font = 'Nunito Sans',
        this.letterSpacing = 1.0,
        this.decoration = TextDecoration.none}) {

    this.text = text;
    getStyle();
  }

  getStyle() {
    switch (styles) {
      case TextStyles.toolbar:
        {
          fontWeight = FontWeight.w800;
          fontSize = 16;
          letterSpacing = 2;
        }
        break;
      case TextStyles.normal:
        {
          fontSize = 14;
        }
        break;
      case TextStyles.titleOnboarding:
        {
          fontWeight = FontWeight.w300;
          fontSize = 26;
        }
        break;
      default:
        {}
        break;
    }
  }

  getDefaultValues() {}

  @override
  Widget build(BuildContext context) {
    getStyle();
    return Text(text == null ? "" : text,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
        style: new TextStyle(
          fontSize: (fontSize== 0.0) ? fontSizeDefault : fontSize,
          fontFamily:  font,
          color: color,
          letterSpacing: letterSpacing,
          fontWeight: fontWeight,
          decoration: decoration,
          decorationThickness: 1.5,
        ));
  }
}
