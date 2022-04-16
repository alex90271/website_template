import 'dart:developer';
import 'package:flutter/material.dart';
import '../../widgets/footer/footer.dart';
import '../../widgets/navigation/navigation_drawer/navigation_drawer.dart';
import 'contact/contact.dart';
import 'content/about/about.dart';
import 'content/main_view/main_view.dart';
import 'content/testimonial/testimonial.dart';

class HomeContentDesktop extends StatefulWidget {
  HomeContentDesktop({
    Key? key,
  }) : super(key: key);

  int _page = 0;
  final controller = PageController(initialPage: 0);

  @override
  State<HomeContentDesktop> createState() => _HomeContentDesktopState();
}

class _HomeContentDesktopState extends State<HomeContentDesktop> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(pgcntrl: widget.controller),
      body: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.loose,
        children: [
          PageView(
              children: [
                MainView(
                  pgctrl: widget.controller,
                ),
                TestimonialView(),
                const AboutView(),
                const ContactView(),
              ],
              controller: widget.controller,
              scrollDirection: Axis.vertical,
              pageSnapping: false,
              onPageChanged: (x) {
                setState(() {
                  widget._page = x;
                  log('visiting page ' + widget._page.toString());
                });
              }),
          Align(alignment: Alignment.bottomCenter, child: const Footer()),
        ],
      ),
    );
  }
}
