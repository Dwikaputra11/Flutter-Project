import 'package:flutter/material.dart';

class UserProfileInput extends StatefulWidget {
  const UserProfileInput({Key? key}) : super(key: key);

  @override
  State<UserProfileInput> createState() => _UserProfileInputState();
}

class _UserProfileInputState extends State<UserProfileInput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/user-topic');
        },
        child: const Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Let\'s Get Started!',
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: Colors.black),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Complete your profile.',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: Colors.grey.shade500,
                      ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'First Name',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 50,
                                width: 170,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    // label: const Text('First Name'),
                                    hintText: 'First Name...',
                                    hintStyle: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          color: Colors.grey.shade500,
                                        ),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Last Name',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 50,
                                width: 170,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    // label: const Text('First Name'),
                                    hintText: 'Last Name...',
                                    hintStyle: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          color: Colors.grey.shade500,
                                        ),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Gender',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            width: 200,
                            child: DropdownButtonFormField<String>(
                              onChanged: (value) {},
                              items: const [
                                DropdownMenuItem(
                                  child: Text('Male',
                                      overflow: TextOverflow.visible),
                                  value: 'Male',
                                ),
                                DropdownMenuItem(
                                  child: Text('Female',
                                      overflow: TextOverflow.visible),
                                  value: 'Female',
                                ),
                                DropdownMenuItem(
                                  child: Text('Better not to say',
                                      overflow: TextOverflow.visible),
                                  value: 'none',
                                ),
                              ],
                              decoration: InputDecoration(
                                // label: const Text('First Name'),
                                hintText: 'First Name...',
                                hintStyle: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: Colors.grey.shade500,
                                    ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Country',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            width: 200,
                            child: DropdownButtonFormField<String>(
                              onChanged: (value) {},
                              items: const [
                                DropdownMenuItem(
                                  child: Text('Indonesia',
                                      overflow: TextOverflow.visible),
                                  value: 'Indonesia',
                                ),
                                DropdownMenuItem(
                                  child: Text('United Kingdom',
                                      overflow: TextOverflow.visible),
                                  value: 'United Kingdom',
                                ),
                                DropdownMenuItem(
                                  child: Text('United States',
                                      overflow: TextOverflow.visible),
                                  value: 'United States',
                                ),
                              ],
                              decoration: InputDecoration(
                                // label: const Text('First Name'),
                                hintText: 'Country...',
                                hintStyle: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: Colors.grey.shade500,
                                    ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Region',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            width: 200,
                            child: DropdownButtonFormField<String>(
                              onChanged: (value) {},
                              items: const [
                                DropdownMenuItem(
                                  child: Text(
                                    'Bali',
                                    overflow: TextOverflow.visible,
                                  ),
                                  value: 'Bali',
                                ),
                                DropdownMenuItem(
                                  child: Text('Yogyakarta',
                                      overflow: TextOverflow.visible),
                                  value: 'Yogyakarata',
                                ),
                                DropdownMenuItem(
                                  child: Text('London',
                                      overflow: TextOverflow.visible),
                                  value: 'London',
                                ),
                              ],
                              decoration: InputDecoration(
                                // label: const Text('First Name'),
                                hintText: 'Region...',
                                hintStyle: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: Colors.grey.shade500,
                                    ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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
