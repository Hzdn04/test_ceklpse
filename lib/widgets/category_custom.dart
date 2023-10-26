import 'package:flutter/material.dart';
import 'package:test_ceklpse/config/theme.dart';

class CategoryCustom extends StatefulWidget {
  const CategoryCustom(
      {super.key, required this.title, });

  final String title;

  @override
  State<CategoryCustom> createState() => _CategoryCustomState();
}

class _CategoryCustomState extends State<CategoryCustom> {
   bool _isToggled = false;
  @override
  Widget build(BuildContext context) {

    backgroundColor() {
      if (!_isToggled) {
        return Colors.white;
      } else {
          return kPrimaryColor;
      }
    }

    borderColor() {
      if (!_isToggled) {
        return kPrimaryColor;
      } else {
        return Colors.white;
      }
    }

    Text mainTitle() {
    return Text(
        widget.title,
        style:
           _isToggled ? const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400) : blackTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w400),
      );
  }

    return GestureDetector(
      onTap: () {
        setState(() {
          _isToggled = !_isToggled;
        });
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          color: backgroundColor(),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: borderColor(), width: 1),
        ),
        height: 41,
        child: mainTitle(),
      ),
    );
  }
}
