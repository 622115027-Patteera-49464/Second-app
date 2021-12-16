import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Computer Knowledge"),
        backgroundColor: Colors.blueGrey[600],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            MyBox(
                "What is a computer?",
                "A computer is an electronic device that manipulates information, or data.",
                "https://cdn.pixabay.com/photo/2015/01/08/18/27/startup-593336_960_720.jpg"),
            SizedBox(
              height: 20,
            ),
            MyBox(
                "What is Flutter?",
                "Flutter is a free and open-source mobile UI framework created by Google.",
                "https://cdn.pixabay.com/photo/2015/12/27/05/48/turntable-1109588_960_720.jpg"),
            SizedBox(
              height: 20,
            ),
            MyBox(
                "What is Dart?",
                "Dart is the programming language used to code Flutter apps.",
                "https://cdn.pixabay.com/photo/2016/11/29/11/39/computer-1869236_960_720.jpg"),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

Widget MyBox(String title, String subtitle, String imgUrl) {
  return Container(
    padding: EdgeInsets.all(20),
    height: 150,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
            image: NetworkImage(imgUrl),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.darken))),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          subtitle,
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
        SizedBox(
          height: 10,
        ),
        TextButton(onPressed: () {}, child: Text("Read More"))
      ],
    ),
  );
}
