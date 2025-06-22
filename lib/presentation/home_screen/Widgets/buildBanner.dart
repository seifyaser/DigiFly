import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget buildBanner() {
  return SliverToBoxAdapter(
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: 180, 
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/images/bannerimage.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 12),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/images/bannerimage.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}