import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget buildSearchBar() {
  return SliverToBoxAdapter(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffF2F2F2),
                hintText: "Search here ...",
                prefixIcon: const Icon(Icons.search),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 18, 
                  horizontal: 16,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          Container(
            width: 56,
            height: 56,
            decoration: const BoxDecoration(
              color: Color(0xff46BC8A),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
            child: Center(
              child: SvgPicture.asset(
                'assets/images/searchFILTER.svg',
                width: 44,
                height: 44,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
