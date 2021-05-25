import 'package:flutter/material.dart';
import 'package:second/bottom_bar.dart';

class CookieDetail extends StatelessWidget {
  final assetPath, cookieprice, cookiename;
  CookieDetail({this.assetPath, this.cookiename, this.cookieprice});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF545D68),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Pick Up",
          style: TextStyle(
            fontFamily: 'Varela',
            fontSize: 20.0,
            color: Color(0xFF545D68),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Color(0xFF545D68),
              ))
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Center(
              child: Text(
                "Cookie",
                style: TextStyle(
                    color: Color(0xFFF17532),
                    fontFamily: 'Varela',
                    fontSize: 40),
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Hero(
              tag: assetPath,
              child: Image.asset(
                assetPath,
                height: 150.0,
                width: 100.0,
                fit: BoxFit.contain,
              )),
          SizedBox(
            height: 20.0,
          ),
          Center(
              child: Text(
            cookiename,
            style: TextStyle(
                fontFamily: 'Varela', fontSize: 28.0, color: Color(0xFFf17532)),
          )),
          SizedBox(
            height: 15.0,
          ),
          Center(
            child: Text(
              cookieprice,
              style: TextStyle(
                  fontFamily: 'Varela', fontSize: 20.0, color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              style: TextStyle(
                  color: Colors.grey, fontSize: 16.0, letterSpacing: 1.0),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Add to Cart",
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Varela', fontSize: 16.0)),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFFF17532))),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFEF7532),
        onPressed: () {},
        child: Icon(Icons.fastfood),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottoBar(),
    );
  }
}
