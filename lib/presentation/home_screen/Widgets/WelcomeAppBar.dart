import 'package:flutter/material.dart';

Widget WelcomeAppBar() {
  return SliverAppBar(
    automaticallyImplyLeading: false,
    expandedHeight: 120,
    backgroundColor: Colors.white,
    flexibleSpace: FlexibleSpaceBar(
      background: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0,),
        child: Align(
          alignment: Alignment.center,
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: const CircleAvatar(
              child: Icon(Icons.person),
            ),
            title: const Text(
              "Ahmed Alaa",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            subtitle: const Text("Welcome !",
                style: TextStyle(fontSize: 14, color: Colors.black54)),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(clipBehavior: Clip.none, children: const [
                  Icon(Icons.favorite_border),
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
                  Icon(Icons.notifications_none),
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
    ),
  );
}
