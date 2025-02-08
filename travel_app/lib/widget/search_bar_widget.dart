import 'package:flutter/material.dart';

class SearchBarWidget {
  static Widget searchBar({
    required BuildContext context,
    required TextEditingController controller,
    required String hintText,
    required IconData suffixIcon,
    required IconData prefixIcon,
  }) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          children: [
            Icon(
              prefixIcon,
              color: Colors.grey,
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  
                  hintText: hintText,
                  border: InputBorder.none,
                ),
                
              ),
            ),
            Container(
              height: 30,
              width: 1,
              color: Colors.grey,
            ),
            SizedBox(
              width: 8,
            ),
            Icon(
              suffixIcon,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
