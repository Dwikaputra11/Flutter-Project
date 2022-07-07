import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  // bool _focused = false;

  // FocusNode _node = ;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                child: TextField(
                  // focusNode: ,
                  onEditingComplete: () {
                    setState(() {
                      
                    });
                  },
                  cursorRadius: const Radius.circular(15),
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.grey.shade600),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey.shade600,
                      size: 20,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.all(8.0),
                    // focusedBorder: OutlineInputBorder(),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 1,
                        style: BorderStyle.solid,
                      ),
                    ),
                    // focusedBorder: InputBorder.none,
                    // enabledBorder: InputBorder.none,
                    // errorBorder: InputBorder.none,
                    // disabledBorder: InputBorder.none,
                    // enabledBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(20),
                    //   borderSide: BorderSide(color: Colors.white),
                    // ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                child: Text(
                  'Recent Searches',
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.7,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Container(
                    height: 70,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: ListTile(
                        title: const Text('Computer Science'),
                        subtitle: const Text('Computer'),
                        trailing: Container(
                          width: 70,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text('123 New',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  itemCount: 3,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
