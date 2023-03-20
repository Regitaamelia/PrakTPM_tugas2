import 'package:flutter/material.dart';
import 'package:regitaamelia_tugas2/detail_page.dart';
import 'identity.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String pesanKirim = "Data yang dikirimkan";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            final Identity dataIdentity = listIdentity[index];
            return Card(
              child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailPage(
                        identityTerima: dataIdentity,
                      );
                    }));
                  },
                  child: Row(
                    children: [
                      ClipRRect(
                        child: SizedBox(
                          height: 120,
                          width: 160,
                          child: Image.network(dataIdentity.fotoUrls,
                              fit: BoxFit.cover),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 250.0),
                          ),
                          Text(dataIdentity.name)],
                      ),
                    ],
                  )),
            );
          },
          // perulangan
          itemCount: listIdentity.length,
        ),
      ),
    );
  }
}
