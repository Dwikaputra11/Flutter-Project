import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  DrawerScreen({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> drawerListTiles = [
    {'iconData': const Icon(Icons.group), 'title': 'New Group'},
    {'iconData': const Icon(Icons.lock), 'title': 'New Secret Group'},
    {'iconData': const Icon(Icons.notifications), 'title': 'New Channel Chat'},
    {'iconData': const Icon(Icons.contacts), 'title': 'Contacts'},
    {'iconData': const Icon(Icons.bookmark_border), 'title': 'Saved Message'},
    {'iconData': const Icon(Icons.phone), 'title': 'Calls'},
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'I Made Dwika Putra Riswanda',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: Colors.white)
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text(
              'dwikariswanda@gmail.com',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.white),
            ),
            currentAccountPicture: const CircleAvatar(
              backgroundImage: AssetImage('lib/assets/img/dwika.jpg'),
            ),
          ),
          // DrawerListTile(
          //   icon: Icons.group,
          // ),
          // drawerListTiles.map((e) => DrawerListTile(icon: e['iconData'], title: e['title'], onTilePressed: (){}),),
          DrawerListTile(
            icon: Icons.notifications,
            title: 'New Channel Chat',
            onTilePressed: () {},
          ),
          DrawerListTile(
            icon: Icons.contacts,
            title: 'Contacts',
            onTilePressed: () {},
          ),
          DrawerListTile(
            icon: Icons.bookmark_border,
            title: 'Saved Message',
            onTilePressed: () {},
          ),
          DrawerListTile(
            icon: Icons.phone,
            title: 'Calls',
            onTilePressed: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData icon;
  final String? title;
  final VoidCallback onTilePressed;

  // const DrawerListTile(Key? key, this.iconData, this.title, this.onTilePressed)
  // :super(key: key);
  const DrawerListTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTilePressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(icon),
      title: Text(
        title!,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}
