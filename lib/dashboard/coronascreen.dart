import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as Firebase_Storage;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

class CoronaForm extends StatefulWidget {
  @override
  _CoronaFormState createState() => _CoronaFormState();
}

class _CoronaFormState extends State<CoronaForm> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController _travellingfrom = new TextEditingController();
  TextEditingController _destination = new TextEditingController();
  TextEditingController _modeoftravelController = new TextEditingController();
  TextEditingController _messageController = new TextEditingController();
  TextEditingController date = new TextEditingController();

  String fileName;
  bool loader = false;
  DateTime selectedDate = DateTime.now();
  var formatter = new DateFormat('yyyy-MM-dd');
  String _singleValue = "";

//function to store dabase file
  Firebase_Storage.Reference mainRef =
      FirebaseStorage.instance.ref().child('Database');
  // StorageReference mainRef = FirebaseStorage.instance.ref().child('Database');
  Future getPdfAndUpload() async {
    var rng = new Random();
    String randomName = "";
    for (var i = 0; i < 20; i++) {
      print(rng.nextInt(100));
      randomName += rng.nextInt(100).toString();
    }
    File file = await FilePicker.getFile(
        type: FileType.custom, allowedExtensions: ['.pdf', '.doc']);
    fileName = '${randomName}.pdf';
    print(fileName);
    print('${file.readAsBytesSync()}');
    savePdf(file.readAsBytesSync(), fileName);
  }

  Future savePdf(List<int> asset, String name) async {
    Firebase_Storage.Reference reference =
        FirebaseStorage.instance.ref().child(name);
    Firebase_Storage.UploadTask uploadTask = reference.putData(asset);
    String url =
        await (await uploadTask.whenComplete(() => {})).ref.getDownloadURL();
    print(url);
    documentFileUpload(url);
    return url;
  }

  void documentFileUpload(String str) {
    var data = {
      "PDF": str,
    };
    mainRef.child("Documents").child('pdf');
  }

//functiont to store database
  Future<String> addForm() async {
    String url =
        "https://ivy-interactive-virtual-e8e62-default-rtdb.firebaseio.com/CaronaFormDetail.json";
    setState(() {
      loader = true;
    });

    final response = await http.post(url,
        body: jsonEncode({
          'travelingform': _travellingfrom.text.trim(),
          'destination': _destination.text.trim(),
          'date_of_arrival': date.text,
          'Mode_of_travel': _modeoftravelController.text,
          'Carona_Test': _singleValue,
          'Corona_Report_Pdf': fileName == null ? "None" : fileName,
          'message': _messageController.text,
        }));
    Map<String, dynamic> loginserverresponse = jsonDecode(response.body);
    setState(() {
      loader = false;
    });
    if (response.statusCode == 200) {
      Fluttertoast.showToast(msg: "Form Upload Sucessfully");
      Navigator.pop(context);
    } else {
      Fluttertoast.showToast(msg: "Error Try Again..!!");
    }
  }

//function to show datetimePicker

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      var formatter = new DateFormat('yyyy-MM-dd');
    String formattedDate = formatter.format(picked);
    setState(() {
      selectedDate = picked;
      date.text = formattedDate;
    });
  }

  bool checkBoxValue = false;
  List<String> _status = ["Pending", "Released", "Blocked"];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height / 100;
    var width1 = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "CORONA FORM",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Montserrat-Regular",
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          actions: <Widget>[
            InkWell(
                onTap: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 30,
                )),
            SizedBox(
              width: 2.4 * MediaQuery.of(context).size.width / 100,
            ),
          ],
          elevation: 0,
          backgroundColor: Color(0xffFFFFFF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20)),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(25),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Container(
                  // height: 85.5 * height,
                  // width: 85.3 * width1,
                  width: double.infinity,
                  color: Colors.transparent,
                  padding: EdgeInsets.all(15),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        // Travelling From
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: "Travelling From",
                              labelStyle: TextStyle(
                                color: Colors.black,
                                // color: Color(0xffFF5733),
                                fontSize: 14,
                                fontFamily: "Montserrat-Regular",
                                fontStyle: FontStyle.normal,
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blue[800]),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blue[800]),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              prefixIcon: Icon(Icons.card_travel),
                              hintText: "Ex: Banglore, India",
                              hintStyle: TextStyle(
                                fontFamily: "Montserrat-Regular",
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                              ),
                              filled: true,
                              fillColor: Colors.white),
                          controller: _travellingfrom,
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please Enter Travelling From';
                            }
                            return null;
                          },
                          onSaved: (value) {},
                        ),
                        SizedBox(
                          height: 2 * height,
                        ),
                        //  Destination Field
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: "Destination",
                              labelStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: "Montserrat-Regular",
                                fontStyle: FontStyle.normal,
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blue[800]),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blue[800]),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              prefixIcon: Icon(Icons.location_city),
                              hintText: "Ex: Berlin, Germany",
                              hintStyle: TextStyle(
                                fontFamily: "Montserrat-Regular",
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                              ),
                              filled: true,
                              fillColor: Colors.white),
                          controller: _destination,
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please Enter Your Destination';
                            }
                            return null;
                          },
                          onSaved: (value) {},
                        ),
                        SizedBox(
                          height: 2 * height,
                        ),
                        TextField(
                          controller: date,
                          onTap: () => _selectDate(context),
                          decoration: InputDecoration(
                              labelText: "Date of Arrival",
                              labelStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: "Montserrat-Regular",
                                fontStyle: FontStyle.normal,
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blue[800]),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blue[800]),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              prefixIcon: Icon(Icons.location_city),
                              hintText: "",
                              hintStyle: TextStyle(
                                fontFamily: "Montserrat-Regular",
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                              ),
                              filled: true,
                              fillColor: Colors.white),
                          keyboardType: TextInputType.text,
                        ),

                        SizedBox(
                          height: 2 * height,
                        ),
                        // Mode Of Travel From Airport
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: "Mode Of Travel From Airport",
                              labelStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: "Montserrat-Regular",
                                fontStyle: FontStyle.normal,
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blue[800]),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blue[800]),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              prefixIcon: Icon(Icons.verified_user),
                              hintText: "Ex: Bus/Train (Number if available)",
                              hintStyle: TextStyle(
                                fontFamily: "Montserrat-Regular",
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                              ),
                              filled: true,
                              fillColor: Colors.white),
                          controller: _modeoftravelController,
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please Enter Mode Of Travel';
                            }
                            return null;
                          },
                          onSaved: (value) {},
                        ),
                        SizedBox(
                          height: 2 * height,
                        ),
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("CORONA TEST"),
                            RadioButton(
                              description:
                                  "Yes, please upload your test results.",
                              value: "yes",
                              groupValue: _singleValue,
                              onChanged: (value) => setState(
                                () => _singleValue = value,
                              ),
                            ),
                            RadioButton(
                              description: "No",
                              value: "no",
                              groupValue: _singleValue,
                              onChanged: (value) => setState(
                                () => _singleValue = value,
                              ),
                              // textPosition: RadioButtonTextPosition.left,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2 * height,
                        ),
                        FlatButton.icon(
                          icon: Icon(Icons.upload_file),
                          onPressed: () {
                            getPdfAndUpload();
                          },
                          label: Text("Upload Files"),
                          // child: Image.asset(
                          //   "assets/down.gif",
                          //   height: 70,
                          //   width: 70,
                          // ),
                        ),
                        SizedBox(
                          height: 2 * height,
                        ),
                        // message Text Field
                        TextFormField(
                          maxLines: 5,
                          decoration: InputDecoration(
                              labelText:
                                  "IF No, please notify us if you have any symptoms",
                              labelStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: "Montserrat-Regular",
                                fontStyle: FontStyle.normal,
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blue[800]),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blue[800]),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              // prefixIcon: Icon(Icons.message),
                              hintText: "Message",
                              hintStyle: TextStyle(
                                fontFamily: "Montserrat-Regular",
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                              ),
                              filled: true,
                              fillColor: Colors.white),
                          controller: _messageController,
                          keyboardType: TextInputType.multiline,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please Enter Your message';
                            }
                            return null;
                          },
                          onSaved: (value) {},
                        ),
                        SizedBox(
                          height: 2 * height,
                        ),

                        Row(
                          children: <Widget>[
                            Checkbox(
                              value: checkBoxValue,
                              onChanged: (bool value) {
                                setState(() {
                                  checkBoxValue = value;
                                });
                              },
                              activeColor: Colors.blue[800],
                            ),
                            Expanded(
                              child: Text(
                                "Above Information Is True To My Knowledge.",
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                          ],
                        ),

                        Visibility(
                          visible: loader ?? true,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 2,
                              ),
                              SpinKitCubeGrid(
                                color: Color(0xffFF5733),
                                size: 30,
                              ),
                              Text(
                                "Please wait...",
                                style: TextStyle(
                                    fontSize: 20, color: Color(0xffFF5733)),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5.5 * height,
                        ),
                        Container(
                          height: 8.8 * height,
                          width: 85.3 * width1,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                              colors: <Color>[
                                Colors.blue[400],
                                Colors.black87,
                              ],
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: FlatButton(
                            child: Text(
                              "SUBMIT",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  fontFamily: "Montserrat-Bold"),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            onPressed: () {
                              if (_formKey.currentState.validate()) {
                                addForm();
                              }
                            },
                            color: Colors.transparent,
                          ),
                        ),
                        //  Login Button Code Ends Here
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0xffefefef),
        buttonBackgroundColor: Colors.blue[800],
        height: 50,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 25,
            color: Colors.black,
          ),
          Icon(
            Icons.person,
            size: 25,
            color: Colors.black,
          ),
          Icon(
            Icons.comment,
            size: 25,
            color: Colors.black,
          ),
        ],
        animationDuration: Duration(milliseconds: 200),
        index: 0,
        animationCurve: Curves.bounceInOut,
        onTap: (index) {
          debugPrint("Current Index is $index");
        },
      ),
    );
  }
}
