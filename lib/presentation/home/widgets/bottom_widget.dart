import 'package:flutter/material.dart';
class bottom_widget extends StatelessWidget {
  const bottom_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      color: Colors.orange, // Background for chat/call section
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween, // Align to left and right
        children: [
          // Chat Section
          Expanded(
            child: InkWell(
              onTap: () {
                // Chat action
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceAround, // Left alignment for Chat
                children: [
                  // Space before arrow
                  Icon(Icons.arrow_back_ios_new_rounded,
                      color: Colors.white, size: 16),
                  SizedBox(width: 4),
                  Row(
                    children: [
                      Icon(Icons.chat_bubble, color: Colors.white),
                      SizedBox(width: 4),
                      Text(
                        'Chat',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 2,
            color: Colors.white, // Divider between chat and call
          ),
          // Call Section
          Expanded(
            child: InkWell(
              onTap: () {
                // Call action
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceAround, // Right alignment for Call
                children: [
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Icon(Icons.call, color: Colors.white),
                      SizedBox(width: 4),
                      Text(
                        'Call',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(width: 4),
                  Icon(Icons.arrow_forward_ios_rounded,
                      color: Colors.white, size: 16),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
