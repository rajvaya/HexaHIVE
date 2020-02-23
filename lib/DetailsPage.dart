import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexahive_app/Aadhar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


import 'SizeConfig.dart';
import 'data.dart';

class Details extends StatefulWidget {
  final int cardindex;
  Details(this.cardindex, {Key key}): super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor:  Colors.white,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(
            city[widget.cardindex],
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
        ),
        body: ListView(
          children: <Widget>[
            Container(
              color: Colors.white,
              height: SizeConfig.safeBlockVertical * 40,
              width: SizeConfig.safeBlockHorizontal * 100,
              child: Hero(
                tag: "hexa"+widget.cardindex.toString(),
                child: Image.network(
                  images[widget.cardindex],
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            Container(
              color: Colors.deepPurpleAccent[50],
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("GALLERY",
                          style: GoogleFonts.pTSans(
                              fontSize: 30, color: Colors.black)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: SizeConfig.safeBlockVertical * 30,
              width: SizeConfig.safeBlockHorizontal * 100,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 0, 16),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: img.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                        child: Container(

                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Image.network(
                                img[index],
                                fit: BoxFit.fill,
                                  loadingBuilder:(BuildContext context, Widget child,ImageChunkEvent loadingProgress) {
                                    if (loadingProgress == null) return child;
                                    return Center(
                                      child: CircularProgressIndicator(
                                        value: loadingProgress.expectedTotalBytes != null ?
                                        loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes
                                            : null,
                                        valueColor: new AlwaysStoppedAnimation<Color>(
                                          Colors.indigo[300],
                                        ),
                                      ),);
                                  },
                              )),
                          decoration: BoxDecoration(
                            color: Colors.indigo[50],
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                           // color: clr[index],
                          ),
                          height: 10,
                          width: SizeConfig.safeBlockHorizontal * 60,
                        ),
                      );
                    }),
              ),
            ),
            Container(
              width: SizeConfig.safeBlockHorizontal * 100,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("ABOUT",
                          style: GoogleFonts.pTSans(
                              fontSize: 32, color: Colors.black)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                    child: Text(
                        " Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                        style: GoogleFonts.lato(
                            fontSize: 20, color: Colors.black)),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.deepPurpleAccent[50],
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("AMENITITES",
                          style: GoogleFonts.pTSans(
                              fontSize: 30, color: Colors.black)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 60),
              child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: amniti.length,
                  shrinkWrap: true,
                  gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (BuildContext context, int index) {
                    return FlipCard(
                      direction: FlipDirection.HORIZONTAL,
                      front:  Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            //color: Colors.green[100],
                            border: Border(
                              top: BorderSide(width: 6.0, color: Colors.indigo[300]),
                              bottom: BorderSide(width: 6.0, color: Colors.indigo[300]),
                              left: BorderSide(width: 6.0, color: Colors.indigo[300]),
                              right: BorderSide(width: 6.0, color: Colors.indigo[300]),
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(00.0),
                              topRight: Radius.circular(80.0),
                              bottomLeft: Radius.circular(80.0),
                              bottomRight: Radius.circular(00.0),),
                          ),
                          child: Center(
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: FaIcon(aIcon[index],size: 50,color: Colors.indigo[200],)
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(amniti[index],style: TextStyle(fontSize: 16),textAlign: TextAlign.center,),
                                )
                              ],
                            ),
                          ),
                          height: 50,
                          width: 50,
                        ),
                      ),
                      back: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            //color: Colors.green[100],
                            border: Border(
                              top: BorderSide(width: 6.0, color: Colors.indigo[300]),
                              bottom: BorderSide(width: 6.0, color: Colors.indigo[300]),
                              left: BorderSide(width: 6.0, color: Colors.indigo[300]),
                              right: BorderSide(width: 6.0, color: Colors.indigo[300]),
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(80.0),
                              topRight: Radius.circular(00.0),
                              bottomLeft: Radius.circular(00.0),
                              bottomRight: Radius.circular(80.0),),
                          ),
                          child: Center(
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(back[index],style: TextStyle(fontSize: 14),textAlign: TextAlign.center,),
                                )
                              ],
                            ),
                          ),
                          height: 50,
                          width: 50,
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Aadhar()),
          );
        },
        icon: Icon(Icons.shopping_cart),
        label: Text("BUY NOW \u20B9 XXXXX"),
        backgroundColor: Colors.indigo[300]
      ),
    );
  }
}
