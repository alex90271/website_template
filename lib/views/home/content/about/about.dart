import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../../globals.dart';
import '../../../../widgets/centerted_view/centerted_view.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.75,
      color: brandBlack,
      child: CenteredView(
        child: Align(
          alignment: Alignment.center,
          child: ScreenTypeLayout(
            desktop: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                  child: Text(
                    'About',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: brandWhite, fontSize: 24),
                  ),
                ),
                Row(
                  children: [
                    ClipOval(
                        child: Image.asset(
                      'headshot.jpeg',
                      height: size.height / 2,
                    )),
                    const SizedBox(
                      width: 50,
                    ),
                    const Expanded(
                      child: Text(
                        'Hello\nmy name is Alex Alder \nI am a full stack developer I specialize in Flutter, Python, Java, and Wordpress, with familiarity with JavaScript, C++, PHP, and am constantly excited to learn more ',
                        style: TextStyle(color: brandWhite, fontSize: 18),
                      ),
                    ),
                  ],
                )
              ],
            ),
            mobile: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                  child: Text(
                    'About',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: brandWhite, fontSize: 24),
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    ClipOval(
                        child: Image.asset(
                      'headshot.jpeg',
                      height: 275,
                    )),
                    const SizedBox(
                      height: 50,
                    ),
                    const Text(
                      'Hi!\n \nI\'m Alex Alder \nI am a full stack developer\n specializing in in Flutter, Python, Java, and Wordpress,\n I also have familiarity with JavaScript, C++, PHP, and am constantly learning more \n \n I am currently working on a POS integrated tip and payroll report generator',
                      style: TextStyle(color: brandWhite, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
