import '../../../globals.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../centerted_view/centerted_view.dart';
import 'navigation_bar/navigation_bar.dart';

class NaviBar extends StatelessWidget {
  final PageController pgctrl;
  const NaviBar({Key? key, required this.pgctrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: SizedBox(
        height: 80,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
            Row(children: [Image.asset(mainLogo), const Text(mainTitle)]),
          ],
        ),
      ),
      desktop: CenteredView(
          child: NavigationBarTabletDesktop(
        pgctrl: pgctrl,
      )),
    );
  }
}
