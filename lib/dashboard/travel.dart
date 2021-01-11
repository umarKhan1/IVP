import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import 'package:pdf_flutter/pdf_flutter.dart';

class TravelScreen extends StatefulWidget {
  @override
  _TravelScreenState createState() => _TravelScreenState();
}

class _TravelScreenState extends State<TravelScreen> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController2;
  ChewieController _chewieController;
  bool _visible = true;
  bool _visible1 = true;

  @override
  void initState() {
    _videoPlayerController2 = VideoPlayerController.asset('assets/MyMovie.mp4');
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController2,
      aspectRatio: 3 / 2,
      autoPlay: true,
      looping: true,
    );
    super.initState();
  }

  @override
  void dispose() {
    _videoPlayerController2.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height / 100;
    var width1 = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          title: Text(
            "TRAVEL",
            style: TextStyle(
                color: Colors.black,
                fontFamily: "Montserrat-Regular",
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
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
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
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
                            'TRAVEL IN TRAM',
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
                    child: Expanded(
                      child: Container(
                        height: 44 * height,

                        // color: Colors.grey[300],
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[300],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListView(
                            shrinkWrap: true,
                            children: <Widget>[
                              Text(
                                "Under Travel In Tram \n",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        RichText(
                                          text: TextSpan(
                                            text: 'Step 1: ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text:
                                                      'Find the nearest tram station.',
                                                  style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 18,
                                                  )),
                                            ],
                                          ),
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            text: 'Step 2: ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text:
                                                      'Press the button on the door to get inside.',
                                                  style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 18,
                                                  )),
                                            ],
                                          ),
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            text: 'Step 3: ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text:
                                                      'If you don’t have your university card yet, buy a ticket from the vending machine.',
                                                  style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 18,
                                                  )),
                                            ],
                                          ),
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            text: 'Step 4: ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text:
                                                      'Procedure to buy a ticket from the machine is shown in the sample video.',
                                                  style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 18,
                                                  )),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 300,
                                    width: double.infinity,
                                    child: Chewie(
                                      controller: _chewieController,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
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
                        _visible1 = !_visible1;
                      });
                    },
                    color: Colors.transparent,
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'TRAM ROUTE MAP',
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
                    visible: !_visible1,
                    child: PDF.assets(
                      'assets/route.pdf',
                      height: 30 * height,
                      width: 98 * width1,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Visibility(
                    visible: !_visible1,
                    child: Container(
                      height: 20 * height,
                      width: double.infinity,
                      // color: Colors.grey[300],
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[300],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Tip :-",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            WidgetSpan(
                                              child: Icon(
                                                Icons.info_outline_rounded,
                                                size: 25,
                                                color: Colors.black,
                                              ),
                                            ),
                                            TextSpan(
                                                text:
                                                    " You can easily find a Cab outside the main station's.",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                )),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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
