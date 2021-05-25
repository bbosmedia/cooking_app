import 'package:flutter/material.dart';

class CookiePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: [
          SizedBox(
            height: 15.0,
          ),
          Container(
            padding: EdgeInsets.only(right: 15.0),
            width: MediaQuery.of(context).size.width - 30,
            height: MediaQuery.of(context).size.height - 50,
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 15.0,
              childAspectRatio: 0.8,
              children: [
                _buildCard('Cookie mint', '\$3.99', 'assets/cookiemint.jpg',
                    false, false, context),
                _buildCard('Cookie cream', '\$5.99', 'assets/cookiecream.jpg',
                    true, false, context),
                _buildCard('Cookie classic', '\$1.99',
                    'assets/cookieclassic.jpg', false, true, context),
                _buildCard('Cookie choco', '\$2.99', 'assets/cookiechoco.jpg',
                    false, false, context)
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCard(String name, String price, String imgPath, bool added,
      bool isFavourite, context) {
    return Padding(
        padding: EdgeInsets.only(top: 5.0, left: 5.0, right: 5.0, bottom: 5.0),
        child: InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3.0,
                      blurRadius: 5.0)
                ],
                color: Colors.white),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      isFavourite
                          ? Icon(
                              Icons.favorite,
                              color: Color(0xFFEF7532),
                            )
                          : Icon(Icons.favorite_border,
                              color: Color(0xFFEF7532))
                    ],
                  ),
                ),
                Hero(
                  tag: imgPath,
                  child: Container(
                    height: 75.0,
                    width: 75.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(imgPath), fit: BoxFit.contain)),
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  price,
                  style: TextStyle(
                      color: Color(0xFFEF7532),
                      fontFamily: 'Varela',
                      fontSize: 16.0),
                ),
                Text(
                  name,
                  style: TextStyle(fontFamily: 'Varela', fontSize: 16.0),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                  child: Container(
                    height: 1.0,
                    decoration: BoxDecoration(color: Color(0xFFEF7532)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if (!added) ...[
                        Icon(
                          Icons.shopping_basket,
                          color: Color(0xFFD17E50),
                          size: 14.0,
                        ),
                        Text(
                          "Add to Card",
                          style: TextStyle(
                              fontFamily: "Varela",
                              fontSize: 14.0,
                              color: Color(0xFFD17E50)),
                        )
                      ],
                      if (added) ...[
                        Icon(
                          Icons.remove_circle_outline,
                          color: Color(0xFFD17E50),
                          size: 14.0,
                        ),
                        Text(
                          "3",
                          style: TextStyle(
                              fontFamily: "Varela",
                              fontSize: 14.0,
                              color: Color(0xFFD17E50)),
                        ),
                        Icon(
                          Icons.add_circle_outline,
                          color: Color(0xFFD17E50),
                          size: 14.0,
                        )
                      ]
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
