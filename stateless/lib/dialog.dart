import 'package:flutter/material.dart';
import 'package:stateless/stateful.dart';

void main(){
  runApp(AplikasiKu());
}

class AplikasiKu extends StatelessWidget {
  const AplikasiKu({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext content) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  title: Text("INI JUDUL"),
                  content: Text("Ini adalah deskripsi dialog. Kamu bisa melihatnya disini."),
                  actions: [
                    ElevatedButton(onPressed: (){}, child: Text("CANCEL")),
                    ElevatedButton(onPressed: (){}, child: Text("OKAY")),
                  ],
                ),
              );
            },
            child: Text("SHOW DIALOG")
        ),
      ),
    );
  }
}



