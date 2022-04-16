import 'package:flutter/material.dart';
import '../../../globals.dart';
import 'package:url_launcher/url_launcher.dart';

class NavDrawerHeader extends StatelessWidget {
  const NavDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: brandBlue,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(height: 125, child: Image.asset('AA_main.png')),
        ],
      ),
    );
  }
}

class NavDrawerPage extends StatelessWidget {
  final String title;
  final int page;
  final PageController pgcntrl;
  const NavDrawerPage(
    this.title, {
    Key? key,
    required this.page,
    required this.pgcntrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(brandBlue),
            foregroundColor: MaterialStateProperty.all<Color>(brandWhite),
            minimumSize: MaterialStateProperty.all(const Size.fromHeight(60))),
        onPressed: () {
          pgcntrl.jumpToPage(page);
          Navigator.pop(context);
        },
        child: Text(title, style: TextStyle(fontSize: 16)),
      ),
    );
  }
}

class NavDrawerLink extends StatelessWidget {
  final String title;
  final String url;
  const NavDrawerLink(
    this.title, {
    Key? key,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(brandBlue),
            foregroundColor: MaterialStateProperty.all<Color>(brandWhite),
            minimumSize: MaterialStateProperty.all(const Size.fromHeight(60))),
        onPressed: () {
          _launchURL;
        },
        child: Text(title, style: TextStyle(fontSize: 16)),
      ),
    );
  }

  _launchURL() async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Could not launch $url'); //remove for production
    }
  }
}
