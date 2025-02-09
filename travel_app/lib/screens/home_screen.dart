import 'package:flutter/material.dart';
import 'package:travel_app/screens/details_screen.dart';

import '../widget/nav_bar_widget.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 247, 249, 1),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: Text(
                "Explore the",
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Row(
                children: [
                  Text(
                    "Beautiful",
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    " world!",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            _buildRow(),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 410,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return _buildCard();
                },
              ),
            ),
            Spacer(),
       
          NavBarWidget.showCustomAppbar(context,currentIndex: 0)
          ],
        ),
      ),
   
    );
  }

  _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    // color: const Color.fromARGB(255, 246, 145, 179),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Image.asset(
                    "assets/avatar1.png",
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text("John Doe",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    )),
              ],
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13),
            ),
            child: Icon(
              Icons.notifications_none,
              size: 32,
            ),
          ),
        ],
      ),
    );
  }

  _buildRow() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      child: Row(
        children: [
          Text(
            "Best Destination",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          Spacer(),
          Text(
            "View All",
            style: TextStyle(
              fontSize: 16,
              color: Color.fromRGBO(13, 110, 253, 1),
            ),
          ),
        ],
      ),
    );
  }

  _buildCard() {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return DetailsScreen();
            },
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    "https://s3-alpha-sig.figma.com/img/f030/0adc/49024100a89c01bb1b2bacc523162e75?Expires=1739750400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=oCRLpnaHlL~B1vGi-j3pUFW8AIO6Mpn0cLiFqbZz8VxCdYSgpQ4hGlUHcKnhX~yxktQA9xIhrlGRfThaRarlMCovW2fV~lOVX7q0uZtXQAxy5SMQW~5469NhjR5cbdrtMy05K0JXZYDKDCw~gjsR7hluQqIjYTkda2JEQk4pl7TW66sdnNCP5Wdmk~IL4iPyuEuD~5ZM8Aa-QcDa3oaF~eySgK6HduySc5WBOfQnqlS5f7sC-2TPxl7FyLtngXm5x2p8nVIYgwx6o0tdgCh~KezNKw8WC8w5W7hmu09UArVGqdnd~rB9Wnn9aHKhMkleA4iSnfv~EripJjYYJr0psw__",
                    height: 286,
                    width: 240,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 10,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Icon(
                      Icons.bookmark_border,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "Bali, Indonesia",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 45,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text("4.7"),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Icon(Icons.location_on_outlined),
                Text(
                  "Tekergat, Sunamgnj",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 70,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Image.asset("assets/avatar2.png"),
                      Positioned(
                        left: 10,
                        child: Image.asset("assets/avatar3.png"),
                      ),
                      Positioned(
                        left: 25,
                        child: Image.asset("assets/avatar4.png"),
                      ),
                      Positioned(
                        left: 40,
                        child: Image.asset("assets/avatar5.png"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
