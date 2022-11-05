import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume/screens/more_info_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:switcher_button/switcher_button.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/strings.dart';
import '../utils/styles.dart';
import '../utils/themeModel.dart';

class Home extends StatefulWidget {
  static const routeName = '/home';

  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // method for url launcher that makes linking to social media possible
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri(scheme: "https", host: url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Cannot launch url";
    }
  }

  @override
  Widget build(BuildContext context) {
    // using the consumer from provider package to help with implementation of dark mode
    return Consumer(
      builder: (context, ThemeModel themeNotifier, child) {
        return Scaffold(
          body: SafeArea(
            // using a singlechildscrollview to make the page scrollable
            child: SingleChildScrollView(
              padding: EdgeInsets.all(25),
              // the screen is layered in a column structure
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'switch mode  ',
                        style: Styles.textTextStyle,
                      ),

                      // implementing a switcher button for switching light and dark mode
                      SwitcherButton(
                        value: themeNotifier.isDark ? true : false,
                        onChange: (value) {
                          themeNotifier.isDark
                              ? themeNotifier.isDark = false
                              : themeNotifier.isDark = true;
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // using a circle avatar to display image
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage('assets/images/mypic.jpg'),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // texts widgets for displaying name and role
                            Text(
                              'Peter H. Ibrahim',
                              style: Styles.titleTextStyle,
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Mobile(flutter) developer',
                              style: Styles.textTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),

                  // text widgets for displaying contact details
                  Text(
                    'Contacts',
                    style: Styles.titleTextStyle,
                  ),
                  SizedBox(height: 3),
                  Row(
                    children: [
                      Icon(Icons.phone),
                      SizedBox(width: 3),
                      Text(
                        '(+234) 8160550464',
                        style: Styles.textTextStyle,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.email),
                      SizedBox(width: 3),
                      Text(
                        'peteribrahim402@gmail.com',
                        style: Styles.textTextStyle,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined),
                      SizedBox(width: 3),
                      Text(
                        'Remote',
                        style: Styles.textTextStyle,
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Socials',
                    style: Styles.titleTextStyle,
                  ),
                  SizedBox(height: 3),
                  Row(
                    children: [
                      // linking the social media links to the internet
                      InkWell(
                        onTap: () {
                          _launchURL("www.linkedin.com");
                        },
                        child: SvgPicture.asset('assets/images/linkedin.svg'),
                      ),
                      SizedBox(width: 20),
                      InkWell(
                        onTap: () {
                          _launchURL("www.twitter.com");
                        },
                        child: SvgPicture.asset('assets/images/twitter.svg'),
                      ),
                      SizedBox(width: 20),
                      InkWell(
                        onTap: () {
                          _launchURL("www.facebook.com");
                        },
                        child: SvgPicture.asset('assets/images/fb_logo.svg'),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),

                  // text widget that displays the about me section
                  Text(
                    'A little bit about me',
                    style: Styles.titleTextStyle,
                  ),
                  SizedBox(height: 3),
                  Text(
                    Strings.aboutYouText,
                    style: Styles.textTextStyle,
                  ),
                  SizedBox(height: 5),
                  // texts describing what i can offer
                  Text(
                    'What I can offer',
                    style: Styles.titleTextStyle,
                  ),
                  SizedBox(height: 3),
                  Text(
                    Strings.whatYouCanDo,
                    style: Styles.textTextStyle,
                  ),
                  SizedBox(height: 10),

                  // implementing a button to go to next page to see more information
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(
                          MoreInfo.routeName,
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        backgroundColor: Styles.appbarColor,
                      ),
                      child: Text('View Additional information'),
                    ),
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
