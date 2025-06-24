import 'package:digify/generated/l10n.dart';
import 'package:digify/theme/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AccountSettingsScreen extends StatelessWidget {
  const AccountSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text(s.settingsTitle, style: Apptheme.buttonBoldprimary,)), 
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Row(
            children: [
              const CircleAvatar(radius: 30, child: Icon(Icons.person)),
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
          
          Text(
            s.settingsTitle,
            style: Apptheme.heading5,
          ),
          
          const SizedBox(height: 10),
          
          ListTile(
            leading: SvgPicture.asset(
              'assets/images/profileIcon.svg',
              height: 24,
            ),
            title: Text(s.settingsProfile, style: Apptheme.heading4,),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pushNamed(context, '/user-profile');
            },
          ),
          
          ListTile(
            leading: SvgPicture.asset(
              'assets/images/language.svg',
              height: 24,
            ),
            title: Text(s.settingsLanguages, style: Apptheme.heading4,),
            trailing: Text(S.of(context).Languageoption, style: Apptheme.TextBold4),
            onTap: () {},
          ),

          const SizedBox(height: 30),
          
          Text(
            s.settingsCallUsBanner,
            style: Apptheme.heading5,
          ),
          
          const SizedBox(height: 10),
          
          ListTile(
            leading: SvgPicture.asset(
              'assets/images/callUsICON.svg',
              height: 24,
            ),
            title: Text(s.settingsCallUs, style: Apptheme.heading4,),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          ),
          
          ListTile(
            leading: SvgPicture.asset(
              'assets/images/ABOUTusICON.svg',
              height: 24,
            ),
            title: Text(s.settingsAboutUs, style: Apptheme.heading4,),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          ),

          const SizedBox(height: 30),
          
          ListTile(
            leading: SvgPicture.asset('assets/images/signout.svg', height: 24),
            title: Text(s.settingsSignOut, style: Apptheme.heading4,),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/login-screen');
            },
          ),
        ],
      ),
    );
  }
}
