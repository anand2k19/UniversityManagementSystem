import "package:flutter/material.dart";

class SubjectProfile extends StatelessWidget {
  final String subjectCode;
  final String subjectTeacher;
  final double profileHeight;

  SubjectProfile(this.subjectCode, this.subjectTeacher, this.profileHeight);

  @override
  Widget build(BuildContext context) {
    Widget buildIntroText(String label, String title) {
      return Container(
          width: 130,
          alignment: Alignment.topLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: Theme.of(context).textTheme.headline2!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(title,
                  style: Theme.of(context).textTheme.headline1,
                  overflow: TextOverflow.ellipsis),
            ],
          ));
    }

    return Container(
      height: profileHeight,
      width: 500,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      margin: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 15,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              spreadRadius: 3,
              color: Colors.grey.withOpacity(0.5),
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildIntroText("Subject Code:", subjectCode),
              buildIntroText("Name of Teacher:", subjectTeacher),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 70),
            width: profileHeight * 0.7,
            height: profileHeight * 0.7,
            child: Image.asset(
              "assets/images/DefaultProfile.png",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
