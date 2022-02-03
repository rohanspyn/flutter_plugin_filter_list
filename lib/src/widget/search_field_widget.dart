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
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 36,
          child: TextField(
            textAlign: TextAlign.start,
            style: searchFieldTextStyle ??
                TextStyle(
                    fontSize: 14, color: Color.fromRGBO(122, 122, 146, 1)),
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search_outlined,
                size: 16,
                color: Color.fromRGBO(122, 122, 146, 1),
              ),
              hintText: searchFieldHintText,
              hintStyle: TextStyle(
                  fontSize: 14, color: Color.fromRGBO(122, 122, 146, 1)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
              contentPadding: EdgeInsets.fromLTRB(0, 4, 0, 0),
              filled: true,
              fillColor: searchFieldBackgroundColor,
            ),
            onChanged: onChanged,
          ),
        ));
  }
}
