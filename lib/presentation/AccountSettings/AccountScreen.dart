import 'package:digify/theme/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AccountSettingsScreen extends StatelessWidget {
  const AccountSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(child: Text('Setting')),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Row(
            children: [
              CircleAvatar(radius: 30, child: Icon(Icons.person)),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Ahmed Alaa',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'ahmed.alaa123@gmail.com',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 30),
          const Text(
            'Settings',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          const SizedBox(height: 10),
          ListTile(
            leading: SvgPicture.asset(
              'assets/images/profileIcon.svg',
              height: 24,
            ),
            title: const Text('Profile'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pushNamed(context, '/user-profile');
            },
          ),
          ListTile(
            leading: SvgPicture.asset('assets/images/language.svg', height: 24),
            title: const Text('Languages'),
            trailing: const Text('العربية', style: Apptheme.TextBold4),
            onTap: () {},
          ),

          const SizedBox(height: 30),

          const Text(
            'Contact us',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          const SizedBox(height: 10),
          ListTile(
            leading: SvgPicture.asset(
              'assets/images/callUsICON.svg',
              height: 24,
            ),
            title: const Text('Call us'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/images/ABOUTusICON.svg',
              height: 24,
            ),
            title: const Text('About us'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          ),

          const SizedBox(height: 30),
          ListTile(
            leading: SvgPicture.asset('assets/images/signout.svg', height: 24),
            title: const Text('Sign out'),
            onTap: () {
              Navigator.pushNamed(context, '/login-screen');
            },
          ),
        ],
      ),
    );
  }
}
