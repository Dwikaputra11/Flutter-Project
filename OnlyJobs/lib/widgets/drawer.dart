import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('I Made Dwika Putra Riswanda'),
            accountEmail: Text('dwikariswanda@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/img/dwika.jpg'),
            ),
          ),
          DrawerListTile(
            iconData: Icons.group,
            title: 'NewGroup',
            onTilePressed: (){},
          ),
          DrawerListTile(
            iconData: Icons.lock,
            title: 'New Secret Group',
            onTilePressed: (){},
          ),
          DrawerListTile(
            iconData: Icons.notifications,
            title: 'New Channel Chat',
            onTilePressed: (){},
          ),
          DrawerListTile(
            iconData: Icons.contacts,
            title: 'contasts',
            onTilePressed: (){},
          ),
          DrawerListTile(
            iconData: Icons.bookmark_border,
            title: 'Saved Message',
            onTilePressed: (){},
          ),
          DrawerListTile(
            iconData: Icons.phone,
            title: 'Calls',
            onTilePressed: (){},
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget{
  final IconData iconData;
  final String? title;
  final VoidCallback onTilePressed;

  // const DrawerListTile(Key? key, this.iconData, this.title, this.onTilePressed)
  // :super(key: key);
  const DrawerListTile({
    required this.iconData,
    required this.title,
    required this.onTilePressed,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(title!, style: TextStyle(fontSize: 16),),
    );
  }
}