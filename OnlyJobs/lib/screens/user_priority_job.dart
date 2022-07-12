import 'package:flutter/material.dart';

class UserPriorityJob extends StatefulWidget {
  const UserPriorityJob({Key? key}) : super(key: key);

  @override
  State<UserPriorityJob> createState() => _UserPriorityJobState();
}

class _UserPriorityJobState extends State<UserPriorityJob> {
  List<Map<String, dynamic>> jobs = [
    {'name': 'Doctor', 'isSelected': false},
    {'name': 'Doctor', 'isSelected': false},
    {'name': 'Doctor', 'isSelected': false},
    {'name': 'Doctor', 'isSelected': false},
    {'name': 'Doctor', 'isSelected': false},
    {'name': 'Doctor', 'isSelected': false},
    {'name': 'Doctor', 'isSelected': false},
    {'name': 'Doctor', 'isSelected': false},
    {'name': 'Doctor', 'isSelected': false},
    {'name': 'Doctor', 'isSelected': false},
    {'name': 'Doctor', 'isSelected': false},
    {'name': 'Doctor', 'isSelected': false},
    {'name': 'Doctor', 'isSelected': false},
    {'name': 'Doctor', 'isSelected': false},
  ];

  void _changeItemColor(int index) {
    setState(() {
      jobs[index]['isSelected'] = !jobs[index]['isSelected'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/user-created-confirm');
        },
        child: const Icon(Icons.arrow_forward, color: Colors.white),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'What do do you looking for quickly ?',
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
                Flexible(
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 6,
                      childAspectRatio: 3 / 2,
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    shrinkWrap: true,
                    // primary: ,
                    itemCount: jobs.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: InkWell(
                        onTap: () => _changeItemColor(index),
                        child: Card(
                          // elevation: 10,
                          color: Colors.white,
                          shadowColor: Colors.grey.shade400,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: BorderSide(
                              color: jobs[index]['isSelected']
                                  ? const Color(0xFF0057FF)
                                  : Colors.black,
                              // width: 1,
                              // style: BorderStyle.solid,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              jobs[index]['name'],
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: jobs[index]['isSelected']
                                        ? const Color(0xFF4B83EF)
                                        : Colors.grey.shade700,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
