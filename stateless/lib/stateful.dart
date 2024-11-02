import 'package:flutter/material.dart';

void main(){
  runApp(AplikasiKu());
}

class AplikasiKu extends StatefulWidget {
  const AplikasiKu({super.key});

  @override
  State<AplikasiKu> createState() => _AplikasiKuState();
}

class _AplikasiKuState extends State<AplikasiKu> {
  int nilai = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Increment Apps"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$nilai",
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        nilai = nilai - 1;
                        print(nilai);
                        setState(() {});
                      }, child: Icon(Icons.remove),
                  ),
                  ElevatedButton(
                      onPressed: (){
                        nilai = nilai + 1;
                        print(nilai);
                        setState(() {});
                      }, child: Icon(Icons.add),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}



