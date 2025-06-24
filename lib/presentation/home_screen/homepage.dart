import 'package:digify/presentation/home_screen/Widgets/SearchBar.dart';
import 'package:digify/presentation/home_screen/Widgets/WelcomeAppBar.dart';
import 'package:digify/presentation/home_screen/Widgets/buildBanner.dart';
import 'package:digify/presentation/home_screen/Widgets/productList.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;

        return Scaffold(
          body: CustomScrollView(
            slivers: [
              WelcomeAppBar(context),


              buildSearchBar(context),

              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth < 360 ? 12 : 16, vertical: 12),
                sliver: buildBanner(),
              ),

              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth < 360 ? 12 : 16),
                sliver: buildProductList(context),
              ),
            ],
          ),
        );
      },
    );
  }
}
