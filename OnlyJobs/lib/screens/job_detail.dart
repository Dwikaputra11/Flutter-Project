import 'package:flutter/material.dart';
import 'package:tugas_flutter/widgets/job_detail/desciption_detail.dart';
import 'package:tugas_flutter/widgets/job_detail/description_list.dart';
import 'package:tugas_flutter/widgets/job_detail/job_headline.dart';

class JobDetail extends StatelessWidget {
  const JobDetail({Key? key}) : super(key: key);

  // int currentDesc = 0;
  // void _selectedDesc(int index){
  //   setState(() {
  //     currentDesc = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Job'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                    color: Colors.grey.shade200,
                  ),
                ),
                const Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        backgroundImage: AssetImage('lib/assets/img/logo.png'),
                        radius: 40,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Web Development',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              'OnlyJobs',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold, color: Colors.grey.shade500),
            ),
            const SizedBox(
              height: 20,
            ),
            const JobHeadline(),
            const SizedBox(
              height: 10,
            ),
            // DescList(selected: _selectedDesc, currentDesc: currentDesc,),
            DescList(),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Apply Now'),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFA994FF),
                    textStyle: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
