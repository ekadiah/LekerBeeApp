import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class BiodataCandidate extends StatefulWidget {
  @override
  _BiodataCandidateState createState() => _BiodataCandidateState();
}

class _BiodataCandidateState extends State<BiodataCandidate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Align(
                    alignment: FractionalOffset.topLeft,
                    child: Text(
                      "Hampir,\nSelesai!\n",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                          fontSize: 40.0),
                    ),
                  ),
                  Align(
                    alignment: FractionalOffset.centerLeft,
                    child: Text(
                      'Tinggal satu langkah lagi.\nAkunmu akan siap digunakan!',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 0,
              thickness: 3,
              indent: 100.0,
              color: Colors.orange,
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Jenis Kelamin',
                              labelStyle: TextStyle(
                                color: Colors.black,
                              )),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter your number of employees ';
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Umur',
                              labelStyle: TextStyle(
                                color: Colors.black,
                              )),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter the year of establishment';
                            }
                          },
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Upload Resume",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Text(
                                "Maksimal Ukuran File 5MB",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text('dan Tipe File .doc, .docx, .pdf',
                                  style: TextStyle(color: Colors.grey))
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(color: Colors.orange),
                              ),
                              color: Colors.orange,
                              disabledColor: Colors.orange,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    FontAwesome.upload,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "Pilih File",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              onPressed: () {}),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: FractionalOffset.bottomRight,
                    child: SizedBox(
                      width: 170.0,
                      child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(color: Colors.orange),
                          ),
                          color: Colors.orange,
                          disabledColor: Colors.orange,
                          child: Text(
                            "Daftar",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushReplacementNamed('/done');
                          }),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
