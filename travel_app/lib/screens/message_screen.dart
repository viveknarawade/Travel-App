import 'package:flutter/material.dart';
import 'package:travel_app/screens/chats_screen.dart';

import '../widget/nav_bar_widget.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(247, 247, 249, 1),
        title: Text("Messages"),
        centerTitle: true,
        actions: [
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13),
            ),
            child: Icon(
              Icons.more_vert,
            ),
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      backgroundColor: Color.fromRGBO(247, 247, 249, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(),
          SizedBox(
            height: 20,
          ),
          _buildSearchBar(searchHint: "Search for chats & messages"),
          ListView.builder(
            itemCount: 5,
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            itemBuilder: (context, index) {
              return _buildCard(index + 1);
            },
          ),
        Spacer(),
          NavBarWidget.showCustomAppbar(context,currentIndex: 3)
        ],
      ),

    );
  }

  _buildCard(int i) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ChatsScreen(),
            ),
          );
        },
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/avatar$i.png"),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "John Doe",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 125,
                      ),
                      Row(
                        children: [
                          Image.asset("assets/correct.png"),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "10:30",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    "Hey, how are you?",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  _buildSearchBar({required String searchHint}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: searchHint,
            border: InputBorder.none,
            icon: Icon(Icons.search),
          ),
        ),
      ),
    );
  }

  _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(
        children: [
          Text("Messages",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w600,
              )),
          Spacer(),
          Image.asset("assets/pencil.png"),
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
}
