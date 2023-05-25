import 'package:flutter/material.dart';

Widget customTextfield(String hintText) {
  return TextField(
    decoration: InputDecoration(
      prefixIcon: const Icon(
        Icons.phone,
        color: Color(0xff7B7B7B),
      ),
      fillColor: const Color(0xffF7F7FA),
      filled: true,
      hintText: hintText,
      hintStyle: const TextStyle(
          color: Color(0xff7B7B7B), fontSize: 14, fontWeight: FontWeight.w400),
      contentPadding:
          const EdgeInsets.only(left: 14.0, bottom: 18.0, top: 18.0),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(12.0),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(12.0),
      ),
    ),
  );
}
