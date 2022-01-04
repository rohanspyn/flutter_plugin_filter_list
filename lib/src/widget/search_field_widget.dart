import 'package:flutter/material.dart';

class SearchFieldWidget extends StatelessWidget {
  final String? searchFieldHintText;
  final Color? searchFieldBackgroundColor;
  final Function(String)? onChanged;
  final TextStyle? searchFieldTextStyle;
  const SearchFieldWidget({
    Key? key,
    this.searchFieldHintText,
    this.onChanged,
    this.searchFieldBackgroundColor,
    this.searchFieldTextStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        margin: EdgeInsets.all(4),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: searchFieldBackgroundColor),
        child: TextField(
          onChanged: onChanged,
          style: searchFieldTextStyle ??
              TextStyle(fontSize: 14, color: Color.fromRGBO(152, 181, 255, 1)),
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search_rounded,
                color: Color.fromRGBO(152, 181, 255, 1)),
            hintText: searchFieldHintText,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
