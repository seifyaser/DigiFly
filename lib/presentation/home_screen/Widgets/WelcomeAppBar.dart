import 'package:digify/theme/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:digify/generated/l10n.dart';

Widget WelcomeAppBar(BuildContext context) {
  return SliverToBoxAdapter(
    child: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: const CircleAvatar(
            child: Icon(Icons.person),
          ),
          title: const Text(
            "Ahmed Alaa",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          subtitle: Text(
            S.of(context).homeWelcome,
            style: const TextStyle(fontSize: 14, color: Colors.black54),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(clipBehavior: Clip.none, children: const [
                Icon(Icons.favorite, color: Apptheme.primaryColor),
                Positioned(
                  right: -3,
                  top: -3,
                  child: CircleAvatar(
                    radius: 6,
                    backgroundColor: Colors.red,
                    child: Text("1",
                        style: TextStyle(fontSize: 8, color: Colors.white)),
                  ),
                )
              ]),
              SizedBox(width: 20),
              Stack(clipBehavior: Clip.none, children: const [
                Icon(Icons.notifications, color: Apptheme.primaryColor),
                Positioned(
                  right: -3,
                  top: -3,
                  child: CircleAvatar(
                    radius: 6,
                    backgroundColor: Colors.red,
                    child: Text("1",
                        style: TextStyle(fontSize: 8, color: Colors.white)),
                  ),
                )
              ]),
            ],
          ),
        ),
      ),
    ),
  );
}
