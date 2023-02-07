import 'package:flutter/material.dart';

class CustomPassword extends StatefulWidget {
  final String title;
  final String? hintText;
  const CustomPassword({Key? key, required this.title, this.hintText})
      : super(key: key);

  @override
  _CustomPasswordState createState() => _CustomPasswordState();
}

class _CustomPasswordState extends State<CustomPassword> {
  bool visibility = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.title),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
              color: Color(0xffF5F5F5),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey)),
          child: TextField(
            obscureText: !visibility,
            cursorColor: Colors.black,
            decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                contentPadding:
                    EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                hintText: widget.hintText,
                hintStyle: TextStyle(fontSize: 14),
                suffixIcon: IconButton(
                    onPressed: (() {
                      setState(() {
                        visibility = !visibility;
                      });
                    }),
                    icon:
                        visibility ? Icon(Icons.lock_open) : Icon(Icons.lock))),
         
          ),
        ),
      ],
    );
  }
}
