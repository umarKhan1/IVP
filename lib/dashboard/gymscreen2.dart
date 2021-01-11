import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class GymScreen2 extends StatefulWidget {
  @override
  _GymScreen2State createState() => _GymScreen2State();
}

class _GymScreen2State extends State<GymScreen2> {
  bool _visible = true;
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height / 100;
    var width1 = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Container(
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: <Color>[
                        Colors.blue[400],
                        Colors.black87,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                        side: BorderSide(color: Colors.black)),
                    onPressed: () {
                      setState(() {
                        _visible = !_visible;
                      });
                    },
                    color: Colors.transparent,
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Sportzentrum',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                            size: 25,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Visibility(
                    visible: !_visible,
                    child: Container(
                      height: 45 * height, //height = 280
                      width: double.infinity,
                      // color: Colors.grey[300],
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 5),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Tel: ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.black),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '+49 391 6758851',
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 18,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 5),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Email: ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.black),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Sportzentrum@ovgu.de',
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 18,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 5),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Registration: ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.black),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            'In the beginning of every semester you can register to your preferable sport using the link \n',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 18,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            Center(
                                child: Container(
                              height: 40,
                              child: RaisedButton(
                                  onPressed: () {
                                    _launchURL("www.spoz-buch.ovgu.de");
                                  },
                                  child: Text(
                                    "Visit Site",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24),
                                      side: BorderSide(color: Colors.black))),
                            )),
                            SizedBox(
                              height: 1 * height,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 5),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Note: ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.black),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            'Registration dates differ for different sports and can be found on individual pages.',
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 18,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
