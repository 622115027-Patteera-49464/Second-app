import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  // const DetailsPage({Key? key}) : super(key: key);
  final v1, v2, v3, v4;
  DetailsPage(this.v1, this.v2, this.v3, this.v4);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  var _v1, _v2, _v3, _v4;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _v1 = widget.v1;
    _v2 = widget.v2;
    _v3 = widget.v3;
    _v4 = widget.v4;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
        backgroundColor: Colors.blueGrey[600],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Text(_v1,
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.blueGrey[600],
                    fontWeight: FontWeight.bold)),
            Text(_v2,
                style: TextStyle(fontSize: 15, color: Colors.blueGrey[200])),
            Image.network(
              _v3,
              width: 350,
              height: 350,
            ),
            Text(_v4, style: TextStyle(fontSize: 18, color: Colors.blueGrey))
          ],
        ),
      ),
    );
  }
}
