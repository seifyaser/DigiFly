import 'package:digify/generated/l10n.dart';
import 'package:digify/presentation/AccountSettings/AccountScreen.dart';
import 'package:digify/presentation/TextEditor_screen/TextEditorScreen.dart';
import 'package:digify/presentation/home_screen/homepage.dart';
import 'package:digify/theme/appTheme.dart';
import 'package:flutter/material.dart';

class NavigationBartool extends StatefulWidget {
  const NavigationBartool({super.key});
  @override
  State<NavigationBartool> createState() => _NavigationBartoolState();
}

class _NavigationBartoolState extends State<NavigationBartool> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomePage(),
     TextEditorScreen(),
    const AccountSettingsScreen(),
 
  ];

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Apptheme.primaryColor,
        onTap: _onItemTapped,
        items:  [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: S.of(context).homebar),
          BottomNavigationBarItem(icon: Icon(Icons.text_fields), label: S.of(context).texteditorbar),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: S.of(context).settingbar),
        ],
      ),
    );
  }
}