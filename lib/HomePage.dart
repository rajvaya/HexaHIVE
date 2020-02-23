import 'package:hexahive_app/DetailsPage.dart';

import 'data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'SizeConfig.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var herotag = 0;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Container(
              height: SizeConfig.safeBlockVertical * 18,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Morning Vanessa!",
                            style: GoogleFonts.pTSans(
                                fontSize: 30, color: Colors.black)),
                        Text("Browse new Recommended Hostels",
                            style: GoogleFonts.lato(
                                fontSize: 20, color: Colors.black)),
                      ],
                    ),
                    CircleAvatar(
                      radius: 30,
                      child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRXAjRiIVrov0IwQB0jjilumUqr06Q-SD6cpaSwPJjjaYi6u8lH"),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.deepPurpleAccent[50],
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("We're Currently Available In... ",
                          style: GoogleFonts.pTSans(
                              fontSize: 30, color: Colors.black)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: SizeConfig.safeBlockVertical * 60,
              //color: Colors.blue[100],
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Details(index)),
                            );
                          },
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: ClipRRect(
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(16),topLeft: Radius.circular(16) ),
                                    child: Hero(
                                      tag: "hexa"+index.toString(),
                                      child: Image.network(
                                        images[index],
                                        fit: BoxFit.fill,
                                        height: SizeConfig.safeBlockVertical * 40,
                                      ),
                                    )),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(20.0),

                                  ),
                                  color: clr[index],
                                ),
                                //  height: 10,
                                width: SizeConfig.safeBlockHorizontal * 60,
                              ),
                              Container(
                                  child:  Center(
                                    child: Text(city[index],
                      style: GoogleFonts.pTSans(
                      fontSize: 30, color: Colors.white)),
                                  ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20.0),
                                    bottomRight: Radius.circular(20.0),
                                  ),
                                  color: Colors.indigo[300],

                                ),
                                width: SizeConfig.safeBlockHorizontal * 60,
                                height: SizeConfig.safeBlockVertical*6,),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
            SizedBox(height: 105,),
            AppBar(
              title: Text("SHELTREE"),
              centerTitle: true,
              elevation: 0,
              backgroundColor: Colors.indigo[300],
            ),
          ],
        ),
      ),
    );
  }
}
