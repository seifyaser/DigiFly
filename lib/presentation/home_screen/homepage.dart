import 'package:digify/presentation/home_screen/Widgets/SearchBar.dart';
import 'package:digify/presentation/home_screen/Widgets/WelcomeAppBar.dart';
import 'package:digify/presentation/home_screen/Widgets/buildBanner.dart';
import 'package:digify/presentation/home_screen/Widgets/productList.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          WelcomeAppBar(),
          
          buildSearchBar(),
          buildBanner(),
          buildProductList(),
                   
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.green,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.text_fields),
            label: "Text Editor",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
        ],
      ),
    );
  }
}
