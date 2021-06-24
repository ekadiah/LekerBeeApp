
import 'dart:ui';

import 'package:flutter/material.dart';

class BiodataEmployer extends StatefulWidget {
  @override
  _BiodataEmployerState createState() => _BiodataEmployerState();
}

class _BiodataEmployerState extends State<BiodataEmployer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(children: [
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
              child: Text('Tinggal satu langkah lagi.\nAkunmu akan siap digunakan!', style: TextStyle(
                color: Colors.grey
              ),),
            ),








          ]),
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
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Nama Organisasi/Perusahaan',
                    labelStyle: TextStyle(
                      color: Colors.black,
                    )),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter your Organitation or Company Name';
                  }
                },
              ),

              Row(
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Jumlah Karyawan',
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

                  SizedBox(width: 20.0,),

                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Tahun Berdiri',
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
                height: 200,
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
                        style: TextStyle(color: Colors.white
                        ),
                      ),
                      onPressed: (){
                        Navigator.of(context).pushReplacementNamed('/done');
                      }),
                ),
              ),

            ],
          ),
        )
      ]),
    );
  }
}
