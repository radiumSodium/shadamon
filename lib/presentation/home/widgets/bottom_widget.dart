import 'package:flutter/material.dart';

class bottom_widget extends StatelessWidget {
  const bottom_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      color: Colors.orange,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: InkWell(
              onTap: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.arrow_back_ios_new_rounded,
                      color: Colors.white, size: 24),
                  SizedBox(width: 4),
                  Row(
                    children: [
                      Icon(Icons.message_rounded, color: Colors.black),
                      SizedBox(width: 4),
                      Text(
                        'Chat',
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(width: 2, color: Colors.white),
          Expanded(
            child: InkWell(
              onTap: () {
                // Call action
              },
              child: const Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceAround, // Right alignment for Call
                children: [
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Icon(Icons.call, color: Colors.black),
                      SizedBox(width: 4),
                      Text(
                        'Call',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(width: 4),
                  Icon(Icons.arrow_forward_ios_rounded,
                      color: Colors.white, size: 24)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
