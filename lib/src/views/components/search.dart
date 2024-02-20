import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MySearch extends StatefulWidget {
  final void Function(String)? onChanged;
  final String? hintText;
  const MySearch({Key? key, this.onChanged, this.hintText}) : super(key: key);

  @override
  State<MySearch> createState() => _MySearchState();
}

class _MySearchState extends State<MySearch> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextField(
        style: GoogleFonts.poppins(
          fontSize: 20,
        ),
        autofocus: false,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          filled: true,
          hintStyle: GoogleFonts.lora(color: Colors.black),
          fillColor: Colors.grey,
          border: const OutlineInputBorder(),
          focusedBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          enabledBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18),
            child: SvgPicture.asset('assets/search.svg'),
          ),
          hintText: widget.hintText,
        ),
      ),
    );
  }
}
