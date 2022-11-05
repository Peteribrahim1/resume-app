import 'package:flutter/material.dart';
import 'package:resume/utils/styles.dart';

class MoreInfo extends StatelessWidget {
  static const routeName = '/moreinfo';
  const MoreInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // implementing an app bar
      appBar: AppBar(
        title: Text('More Information'),
        centerTitle: true,
        backgroundColor: Styles.appbarColor,
      ),

      // using a singlechildscrollview to make the page scrollable
      body: SingleChildScrollView(
        padding: EdgeInsets.all(25),
        // structuring the page in a column
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // text widgets for displaying skills
            Text(
              'Skills',
              style: Styles.titleTextStyle,
            ),
            SizedBox(height: 3),
            Text(
              '- Flutter & Dart',
              style: Styles.textTextStyle,
            ),
            Text(
              '- Firebase services',
              style: Styles.textTextStyle,
            ),
            Text(
              '- Github',
              style: Styles.textTextStyle,
            ),
            Text(
              '- Provider state management tool',
              style: Styles.textTextStyle,
            ),
            Text(
              '- Excellent communication skills ',
              style: Styles.textTextStyle,
            ),
            Text(
              '- Research & innovation',
              style: Styles.textTextStyle,
            ),
            SizedBox(height: 5),

            // text widgets for displaying educational background
            Text(
              'Education',
              style: Styles.titleTextStyle,
            ),
            SizedBox(height: 3),
            Text(
              '- Msc in view (Computer Science)',
              style: Styles.textTextStyle,
            ),
            Text(
              '- Bsc Computer Science',
              style: Styles.textTextStyle,
            ),
            SizedBox(height: 5),

            // text widgets for displaying experience
            Text(
              'Experience',
              style: Styles.titleTextStyle,
            ),
            SizedBox(height: 3),
            Text(
              '- Freelancing as a Mobile App Developer (Flutter & Dart) from 05/2022 to present.',
              style: Styles.textTextStyle,
            ),
            Text(
              '- Technical Assistant during NYSC at ministry of youth development from 11/2019 to 10/2020.',
              style: Styles.textTextStyle,
            ),
            Text(
              '- Android Developer during industrial training at nhub Nigeria from 09/2017 to 02/2018.',
              style: Styles.textTextStyle,
            ),
            SizedBox(height: 5),

            // text widgets for displaying certifications
            Text(
              'Certifications',
              style: Styles.titleTextStyle,
            ),
            SizedBox(height: 3),
            Text(
              '- Computer professionals registration council of Nigeria (Member GM/004876/2019).',
              style: Styles.textTextStyle,
            ),
            Text(
              '- Flutter & Dart Udemy bootcamp by Maximilian.',
              style: Styles.textTextStyle,
            ),
            Text(
              '- Accelerated Jobberman soft skills training.',
              style: Styles.textTextStyle,
            ),
            SizedBox(height: 35),

          ],
        ),
      ),
    );
  }
}
