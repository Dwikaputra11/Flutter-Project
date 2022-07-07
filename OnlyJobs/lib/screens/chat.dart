import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/chat_provider.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final chats = Provider.of<ChatProvider>(context,listen: false).items;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                  color: Color(0xFFD1D1D1), width: 1, style: BorderStyle.solid),
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: ListTile(
            onTap: () {},
            leading: CircleAvatar(
              backgroundColor: Colors.amber,
              backgroundImage: NetworkImage(chats[index].profileUrl,),
              radius: 50,
            ),
            title: Text(
              chats[index].name,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              chats[index].message,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(color: Colors.grey),
            ),
            trailing: Text(
              chats[index].time,
              overflow: TextOverflow.fade,
              style: Theme.of(context)
                  .textTheme
                  .caption!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
