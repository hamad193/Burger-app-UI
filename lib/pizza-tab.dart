import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_burger_app/second-page.dart';
import 'package:google_fonts/google_fonts.dart';

class PizzaTab extends StatefulWidget {
  @override
  _PizzaTabState createState() => _PizzaTabState();
}

class _PizzaTabState extends State<PizzaTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildListItem(
                        'Fattoria',
                        '610',
                        '20',
                        'assets/images/pizza1.png',
                        'Mushroom, garlic, chilli, tomatoes, and red onion bound in creamy mayonnaise. Also available with VEGAN mayonnaise'),
                    _buildListItem(
                        'Italian',
                        '650',
                        '15',
                        'assets/images/pizza2.png',
                        'Pillowy dough, a crunchy crust, and robust tomato sauce. With cheese, and often with the cheese underneath the sauce'),
                  ],
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildListItem(
                        'Neopolitono',
                        '500',
                        '18',
                        'assets/images/pizza3.png',
                        'Features Provel cheese and a sweeter tomato sauce with a hefty dosage of oregano, Support several toppings'),
                    _buildListItem(
                        'Sicilia',
                        '600',
                        '22',
                        'assets/images/pizza4.png',
                        'Features tomato sauce and mozzarella cheese. Additional toppings from pepperoni and sausage to mushroom'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _buildListItem(
    String name,
    String weight,
    String price,
    String image,
    String description,
  ) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => SecondPage(
              heroTag: name,
              name: name,
              price: price,
              image: image,
              weight: weight,
              description: description,
            ),
          ),
        );
      },
      child: Container(
        height: 220.0,
        width: 160.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 1.0,
              spreadRadius: 3.0,
              offset: Offset(3.0, 3.0),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 20.0,
              child: Row(
                children: [
                  IconButton(
                    color: Colors.black,
                    tooltip: 'Add to Favorite',
                    splashRadius: 10.0,
                    icon: Icon(Icons.favorite_border, color: Colors.black,),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              height: 120.0,
              width: 120.0,
              child: Image.asset(image),
            ),
            Container(
              child: Row(
                children: [
                  SizedBox(width: 15.0),
                  Text(
                    name,
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 2.0),
            Container(
              child: Row(
                children: [
                  SizedBox(width: 15.0),
                  Text(
                    'Weight: ' + weight + ' g',
                    style: GoogleFonts.roboto(
                      color: Colors.grey,
                      fontWeight: FontWeight.w900,
                      fontSize: 11.0,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        child: Text(
                          '\$' + price,
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      //SizedBox(height: 10.0),
                      Container(
                        height: 34.0,
                        width: 34.0,
                        child: FloatingActionButton(
                          backgroundColor: Color(0xFFFFA300),
                          child: Icon(Icons.add),
                          tooltip: 'Add to Cart',
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
