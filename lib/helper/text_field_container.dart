import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TextFieldContainer extends ConsumerStatefulWidget {
  final String hint;
  final double width;
  final int maxLines;
  final TextEditingController controller;
  const TextFieldContainer({
    required this.hint,
    required this.controller,
    this.width = 0,
    this.maxLines = 1,
  });
  _TextFieldContainer createState() => _TextFieldContainer();
}

class _TextFieldContainer extends ConsumerState<TextFieldContainer> {
  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: Color(0XFF7A7D81).withOpacity(.3))),
        width: widget.width > 0 ? widget.width : maxWidth * 0.075,
        child: TextField(
          maxLines: widget.maxLines,
          controller: widget.controller,
          decoration: InputDecoration(
            hintText: widget.hint,
            isDense: true,
            filled: true,
            border: OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
          ),
        ));
  }
}
