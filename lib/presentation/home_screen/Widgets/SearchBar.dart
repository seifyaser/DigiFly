import 'package:digify/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget buildSearchBar(BuildContext context) {
  final TextDirection currentTextDirection = Directionality.of(context);

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
                hintText: S.of(context).homeSearchPlaceholder,
                prefixIcon: const Icon(Icons.search),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 18,
                  horizontal: 16,
                ),

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    topLeft:
                        currentTextDirection == TextDirection.ltr
                            ? Radius.circular(12)
                            : Radius.zero,
                    bottomLeft:
                        currentTextDirection == TextDirection.ltr
                            ? Radius.circular(12)
                            : Radius.zero,
                    topRight:
                        currentTextDirection == TextDirection.rtl
                            ? Radius.circular(12)
                            : Radius.zero,
                    bottomRight:
                        currentTextDirection == TextDirection.rtl
                            ? Radius.circular(12)
                            : Radius.zero,
                  ),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    topLeft:
                        currentTextDirection == TextDirection.ltr
                            ? Radius.circular(12)
                            : Radius.zero,
                    bottomLeft:
                        currentTextDirection == TextDirection.ltr
                            ? Radius.circular(12)
                            : Radius.zero,
                    topRight:
                        currentTextDirection == TextDirection.rtl
                            ? Radius.circular(12)
                            : Radius.zero,
                    bottomRight:
                        currentTextDirection == TextDirection.rtl
                            ? Radius.circular(12)
                            : Radius.zero,
                  ),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: Color(0xff46BC8A),
              borderRadius: BorderRadius.only(
                topRight:
                    currentTextDirection == TextDirection.ltr
                        ? Radius.circular(12)
                        : Radius.zero,
                bottomRight:
                    currentTextDirection == TextDirection.ltr
                        ? Radius.circular(12)
                        : Radius.zero,
                topLeft:
                    currentTextDirection == TextDirection.rtl
                        ? Radius.circular(12)
                        : Radius.zero,
                bottomLeft:
                    currentTextDirection == TextDirection.rtl
                        ? Radius.circular(12)
                        : Radius.zero,
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
