import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/screens/home_screen.dart';
import 'package:travel_app/screens/message_screen.dart';
import 'package:travel_app/screens/profile_screen.dart';
import 'package:travel_app/screens/schedule_screen.dart';
import 'package:travel_app/screens/search_screen.dart';

class NavBarWidget {
  static Widget showCustomAppbar(BuildContext context, {int currentIndex = 0}) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(
                context,
                icon: Icon(
                  Icons.home,
                  color: _getIconColor(0, currentIndex),
                  size: 30,
                ),
                tooltip: "Home",
                onTap: () => _navigateToHome(context),
                isActive: currentIndex == 0,
              ),
              _buildNavItem(
                context,
                icon: Icon(
                  Icons.calendar_month,
                  color: _getIconColor(1, currentIndex),
                  size: 30,
                ),
                tooltip: "Calendar",
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ScheduleScreen()),
                ),
                isActive: currentIndex == 1,
              ),
              _buildNavItem(
                context,
                icon: Icon(
                  Icons.search,
                  color: _getIconColor(2, currentIndex),
                  size: 36,
                ),
                tooltip: "Search",
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SearchScreen(),
                  ),
                ),
                isActive: currentIndex == 2,
              ),
              _buildNavItem(
                context,
                icon: Icon(
                  Icons.message_rounded,
                  color: _getIconColor(3, currentIndex),
                  size: 38,
                ),
                tooltip: "Message",
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MessageScreen(),
                  ),
                ),
                isActive: currentIndex == 3,
              ),
              _buildNavItem(
                context,
                icon: Icon(
                  FontAwesomeIcons.user,
                  color: _getIconColor(4, currentIndex),
                  size: 30,
                ),
                tooltip: "Profile",
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                ),
                isActive: currentIndex == 4,
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _buildNavItem(
    BuildContext context, {
    required Widget icon,
    required String tooltip,
    required VoidCallback onTap,
    bool isActive = false,
  }) {
    return Tooltip(
      message: tooltip,
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: isActive ? Colors.blue.withOpacity(0.1) : Colors.transparent,
            borderRadius: BorderRadius.circular(12),
          ),
          child: icon,
        ),
      ),
    );
  }

  static void _navigateToHome(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return HomeScreen();
        },
      ),
    );
  }

  static Color _getIconColor(int itemIndex, int currentIndex) {
    return itemIndex == currentIndex ? Colors.blue : Colors.grey;
  }
}
