import 'dart:ui';

import 'package:flutter/material.dart';

class Biodata extends StatefulWidget {
  @override
  _BiodataState createState() => _BiodataState();
}

class _BiodataState extends State<Biodata> {
  var _pilihan = ['Ya', 'Tidak'];
  var _sector = ['Sector'];
  String _errorText;

  String _dropDownValue = 'Ya';

  String _dropDownValueSector = 'Sector';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Align(
                  alignment: FractionalOffset.topLeft,
                  child: Text(
                    "Isi Data,\nYuk!",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                        fontSize: 40.0),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Nama Depan',
                            labelStyle: TextStyle(
                              color: Colors.black,
                            )),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter your First Name';
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
                            labelText: 'Nama Belakang',
                            labelStyle: TextStyle(
                              color: Colors.black,
                            )),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter your Last Name';
                          }
                        },
                      ),
                    )
                  ],
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Username',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      )),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter a username';
                    }
                  },
                ),
                FormField(
                  builder: (FormFieldState state) {
                    return DropdownButtonHideUnderline(
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          new InputDecorator(
                            decoration: InputDecoration(
                              filled: false,
                              labelText: 'Profil dapat Dilihat Publik',
                              labelStyle: TextStyle(
                                  color: Colors.black, fontSize: 19.0),
                              errorText: _errorText,
                            ),
                            isEmpty: _dropDownValue == null,
                            child: new DropdownButton<String>(
                              value: _dropDownValue,
                              isDense: true,
                              onChanged: (String newValue) {
                                setState(() {
                                  _dropDownValue = newValue;
                                });
                              },
                              items: _pilihan.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                FormField(
                  builder: (FormFieldState state) {
                    return DropdownButtonHideUnderline(
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          new InputDecorator(
                            decoration: InputDecoration(
                              filled: false,
                              labelText: 'Pilih Sektor Pekerjaan',
                              labelStyle: TextStyle(
                                  color: Colors.black, fontSize: 19.0),
                              errorText: _errorText,
                            ),
                            isEmpty: _dropDownValueSector == null,
                            child: new DropdownButton<String>(
                              value: _dropDownValueSector,
                              isDense: true,
                              onChanged: (String newValue) {
                                setState(() {
                                  _dropDownValueSector = newValue;
                                });
                              },
                              items: _sector.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Nomor Telepon',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      )),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter your phone number';
                    }
                  },
                ),
                SizedBox(
                  height: 80,
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
                        color: Colors.white,
                        disabledColor: Colors.white,
                        child: Text(
                          "Lanjut",
                          style: TextStyle(color: Colors.orange),
                        ),
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed('/biodatacandidate');
                        }),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
