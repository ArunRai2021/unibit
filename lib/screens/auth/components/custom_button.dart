import 'package:flutter/material.dart';

Widget customButton(context, String text) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 18),
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
        gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0XffFFC004), Color(0xffFF742F)]),
        borderRadius: BorderRadius.circular(20)),
    child: Center(
        child: Text(
      text,
      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
    )),
  );
}
