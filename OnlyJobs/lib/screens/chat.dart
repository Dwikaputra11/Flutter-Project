import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) => Container(
          decoration: const BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Color(0xFFD1D1D1),
                      width: 1,
                      style: BorderStyle.solid))),
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: ListTile(
            onTap: (){},
            leading: const CircleAvatar(
              backgroundColor: Colors.amber,
              radius: 50,
            ),
            title: Text(
              'Micheal',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'Hello Friend!',
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(color: Colors.grey),
            ),
            trailing: Text(
              '12 Jun',
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
