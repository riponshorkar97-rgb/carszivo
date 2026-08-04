import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const SearchBarWidget({
    super.key,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,

      decoration: BoxDecoration(
        color: const Color(0xFF012A50),

        borderRadius: BorderRadius.circular(18),

        border: Border.all(
          color: const Color(0xFFD4AF37),
          width: 1,
        ),
      ),

      child: TextField(
        onChanged: onChanged,

        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),

        decoration: const InputDecoration(

          prefixIcon: Icon(
            Icons.search,
            color: Color(0xFFD4AF37),
            size: 28,
          ),

          hintText: "Search luxury cars...",

          hintStyle: TextStyle(
            color: Colors.white60,
          ),

          border: InputBorder.none,

          contentPadding: EdgeInsets.symmetric(
            vertical: 17,
          ),
        ),
      ),
    );
  }
}
