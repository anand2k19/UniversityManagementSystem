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
          alignment: Alignment.topLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              Text(title),
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
