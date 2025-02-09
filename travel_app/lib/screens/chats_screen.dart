import 'package:flutter/material.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 247, 249, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(247, 247, 249, 1),
        title: Column(
          children: [
            Text(
              "Vivek Narawade",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(
              "Active now",
              style: TextStyle(fontSize: 12, color: Colors.green),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.phone, color: Colors.black87),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.black87),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                "Today",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
          ),

          SizedBox(height: 20,),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 10),
              children: [
                _buildUserMEssage(),
                SizedBox(height: 10,),
                _buildAnotherUserMessage(),
                   SizedBox(height: 10,),
                _buildUserMEssage(),
                   SizedBox(height: 10,),
                _buildAnotherUserMessage(),
                   SizedBox(height: 10,),
                _buildUserMEssage(),
                   SizedBox(height: 10,),
                _buildAnotherUserMessage(),
                   SizedBox(height: 10,),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              children: [
                Expanded(child: _buildSearchBar(searchHint: "Type a message")),
                SizedBox(width: 10),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.mic,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

_buildUserMEssage() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.6,
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 7,vertical: 6),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Text(
                "Thank you very much for your traveling, we really like the apartments. We will stay here for another 5 days...",
                style: TextStyle(color: Colors.white),
              ),
              Row(
mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "10:30 AM",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    SizedBox(width: 9,),
                    Image.asset("assets/correct.png", width: 15,color: Colors.white,),
                  ],
                ),
            ],
          ),
        ),
      ),
    ],
  );
}

  Widget _buildAnotherUserMessage() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("assets/avatar1.png"),
        ),
        SizedBox(width: 10),
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.6,
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 7,vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Thank you very much for your traveling. We really like the apartments and will stay here for another 5 days...",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "10:30 AM",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    SizedBox(width: 10),
                    Image.asset("assets/correct.png", width: 15),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSearchBar({required String searchHint}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: searchHint,
          border: InputBorder.none,
          suffixIcon: Icon(Icons.search, color: Colors.grey),
        ),
      ),
    );
  }
}
