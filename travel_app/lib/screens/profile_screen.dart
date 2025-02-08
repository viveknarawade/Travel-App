import 'package:flutter/material.dart';

import '../widget/nav_bar_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 247, 249, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(247, 247, 249, 1),
        title: Text(
          "Profile",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.edit, color: Colors.blue),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
              child: Image.asset(
                "assets/avatar1.png",
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Vivek",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "Leonardo@gmail.com",
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: _buildProfileItem("Reward Points", "10"),
                  ),
                  Expanded(
                    child: _buildProfileItem("Travel Trips", "100"),
                  ),
                  Expanded(
                    child: _buildProfileItem("Bucket List", "200"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            _buildProfileListTile(Icons.bookmark_add_outlined, "Bookmarked"),
            _buildProfileListTile(Icons.location_on, "Address"),
            _buildProfileListTile(Icons.settings, "Settings"),
            _buildProfileListTile(Icons.verified_sharp, "Version"),
          
           NavBarWidget(),
          ],
        ),
      ),
    );
  }

  _buildProfileItem(String title, String value) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 20,
            color: Color.fromRGBO(13, 110, 253, 1),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  _buildProfileListTile(IconData icon, String title) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: Color.fromRGBO(13, 110, 253, 1),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 18,
        ),
      ),
    );
  }
}
