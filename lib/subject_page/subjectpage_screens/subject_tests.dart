import 'package:flutter/material.dart';
import "package:font_awesome_flutter/font_awesome_flutter.dart";

import '../multipage-comp/multipage_header.dart';
import "../multipage-comp/multipage_nav.dart";
import "../dummy_tests.dart";

class SubjectTests extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MultiPageHeader("Tests", FontAwesomeIcons.scroll,
              MediaQuery.of(context).size.height * 0.08),
          MultiPageNav(dummyTest)
        ],
      ),
    );
  }
}
