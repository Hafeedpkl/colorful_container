library colorful_container;
import 'dart:core';
import 'package:flutter/material.dart';
class ColorfulContainer extends StatefulWidget {
  const ColorfulContainer(
      {super.key,
      this.width,
      this.hieght = 120,
      this.color1,
      this.color2,
      this.title = 'Title',
      this.textColor,
      this.subtitle = 'subtitle',
      this.subtitleColor,
      this.padding});
  final double? width;
  final double? hieght;
  final Color? color1;
  final Color? color2;
  final String? title;
  final Color? textColor;
  final String? subtitle;
  final Color? subtitleColor;
  final EdgeInsetsGeometry? padding;
  @override
  State<ColorfulContainer> createState() => _ColorfulContainerState();
}

class _ColorfulContainerState extends State<ColorfulContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? MediaQuery.of(context).size.width * 0.90,
      height: widget.hieght,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: [
              widget.color1 ?? const Color(0xFFc81841),
              widget.color2 ?? Colors.blue
            ],
            begin: Alignment.bottomRight,
          ),
          boxShadow: const [
            BoxShadow(color: Colors.grey, blurRadius: 12, offset: Offset(0, 6)),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              widget.title!,
              style: TextStyle(
                  color: widget.textColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              widget.subtitle!,
              style: TextStyle(color: widget.subtitleColor, fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
