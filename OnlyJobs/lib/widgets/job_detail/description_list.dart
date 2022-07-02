import 'package:flutter/material.dart';

import 'package:tugas_flutter/widgets/job_detail/desciption_detail.dart';

class DescList extends StatefulWidget {
  // Function (int) selected;
  // final int currentDesc;
  // DescList({
  //   Key? key,
  //   required this.selected,
  //   required this.currentDesc,
  // }) : super(key: key);


  @override
  State<DescList> createState() => _DescListState();
}

class _DescListState extends State<DescList> {
  List<String> descList = [
    'Job Description',
    'Company',
    'Reviews',
    'Work Time',
  ];

  int currentDesc = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            height: 40,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: descList.length,
              itemBuilder: (ctx, i) => Column(
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        currentDesc = i;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: currentDesc == i
                            ? Color(0xFFA28CFD)
                            : Colors.white,
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            descList[i],
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(fontWeight: FontWeight.bold)
                                .copyWith(
                                    color: currentDesc == i
                                        ? Colors.white
                                        : Colors.grey),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          DescriptionDetail(currentDescription: currentDesc)
        ],
      ),
    );
  }
}
