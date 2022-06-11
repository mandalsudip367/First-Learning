import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  final imageurl =
      "https://pbs.twimg.com/media/FL--j5GWYAclnfg?format=jpg&name=large";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).cardColor,
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration:
                      BoxDecoration(color: Theme.of(context).canvasColor),
                  accountName: Text(
                    "Sudip Mandal1",
                    style: TextStyle(color: Theme.of(context).accentColor),
                  ),
                  accountEmail: Text("mandalsudip367@gmail.com",
                      style: TextStyle(color: Theme.of(context).accentColor)),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageurl),
                  ),
                )),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Theme.of(context).accentColor,
              ),
              title: Text(
                "Home",
                style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Theme.of(context).accentColor,
              ),
              title: Text(
                "Profile",
                style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Theme.of(context).accentColor,
              ),
              title: Text(
                "Mail me",
                textScaleFactor: 1.2,
                style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
