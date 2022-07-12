import 'package:flutter/material.dart';

class UserTopic extends StatefulWidget {
  const UserTopic({Key? key}) : super(key: key);

  @override
  State<UserTopic> createState() => _UserTopicState();
}

class _UserTopicState extends State<UserTopic> {
  bool _isTopicSelected = false;
  List<Map<String, dynamic>> topics = [
    {
      'title': 'Health Care',
      'subtitle': 'Nurse, Doctor, Pharmacist, etc',
      'isSelected': false
    },
    {
      'title': 'Health Care',
      'subtitle': 'Nurse, Doctor, Pharmacist, etc',
      'isSelected': false
    },
    {
      'title': 'Health Care',
      'subtitle': 'Nurse, Doctor, Pharmacist, etc',
      'isSelected': false
    },
    {
      'title': 'Health Care',
      'subtitle': 'Nurse, Doctor, Pharmacist, etc',
      'isSelected': false
    },
    {
      'title': 'Health Care',
      'subtitle': 'Nurse, Doctor, Pharmacist, etc',
      'isSelected': false
    },
    {
      'title': 'Health Care',
      'subtitle': 'Nurse, Doctor, Pharmacist, etc',
      'isSelected': false
    },
    {
      'title': 'Health Care',
      'subtitle': 'Nurse, Doctor, Pharmacist, etc',
      'isSelected': false
    },
    {
      'title': 'Health Care',
      'subtitle': 'Nurse, Doctor, Pharmacist, etc',
      'isSelected': false
    },
  ];

  void _changeItemColor(int index) {
    setState(() {
      topics[index]['isSelected'] = !topics[index]['isSelected'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/user-priority-job');
        },
        child: const Icon(Icons.arrow_forward, color: Colors.white),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'What topic do you like ?',
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: Colors.black),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'You can select multiple choices.',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: Colors.grey.shade500,
                    ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  // primary: ,
                  itemCount: topics.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Card(
                      child: ListTile(
                        title: Text(
                          topics[index]['title'],
                          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: topics[index]['isSelected']
                                    ? const Color(0xFF4B83EF)
                                    : Colors.grey.shade700,
                              ),
                        ),
                        subtitle: Text(
                          topics[index]['subtitle'],
                          style: Theme.of(context).textTheme.subtitle2!.copyWith(
                                color: topics[index]['isSelected']
                                    ? const Color(0xFF4B83EF)
                                    : Colors.grey.shade600,
                              ),
                        ),
                        // selectedColor: topics[index]['isSelected'] ? const Color(0xFF4B83EF) : null,
                        onTap: () => _changeItemColor(index),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: BorderSide(
                            color: topics[index]['isSelected']
                                ? const Color(0xFF0057FF)
                                : Colors.black,
                            // width: 1,
                            // style: BorderStyle.solid,
                          ),
                        ),
                        trailing: topics[index]['isSelected']
                            ? const Icon(
                                Icons.check,
                                color: Color(0xFF4B83EF),
                              )
                            : null,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
