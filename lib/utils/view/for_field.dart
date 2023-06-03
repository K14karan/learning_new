import 'package:flutter/material.dart';


class FormFieldPage extends StatelessWidget {
  const FormFieldPage({Key? key, this.controller, this.hint, this.preFix}) : super(key: key);

  final TextEditingController? controller;
  final String? hint;
  final Widget? preFix;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,

      decoration: InputDecoration(
          filled: true,
          prefix: preFix,
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  width: 1, color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  width: 1,color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
          border: OutlineInputBorder(
              borderSide: const BorderSide(
                  width: 1,color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
          hintText: (hint??""),
          contentPadding: const EdgeInsets.only(top: 10,left: 10)),
    );
  }
}
