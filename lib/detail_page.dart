import 'package:flutter/material.dart';
import 'home_page.dart';
import 'identity.dart';

class DetailPage extends StatefulWidget {
  // final String pesanTerima;
  final Identity identityTerima;

  const DetailPage({
    Key? key,
    // required this.pesanTerima,
    required this.identityTerima,
  }) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Detail Page"),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50.0),
              ),
              ClipRRect(
                child: SizedBox(
                  height: 150,
                  width: 200,
                  child: Image.network(widget.identityTerima.fotoUrls,
                      fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              Text('Name :', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              Text(widget.identityTerima.name),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              Text('Username :', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              Text(widget.identityTerima.username),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
              ),
              Text('Email :', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              Text(widget.identityTerima.email[0]),
              Text(widget.identityTerima.email[1]),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
              ),
              Text('Company :', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              Text(widget.identityTerima.company[0][0]),
              Text(widget.identityTerima.company[0][1]),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
              ),
              Text(widget.identityTerima.company[1][0]),
              Text(widget.identityTerima.company[1][1]),
            ],
          ),
        ),
      ),
    );
  }

// Future<void> _launchURL(String url) async {
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }
}
