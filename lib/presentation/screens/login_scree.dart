import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Main content of the login screen
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 50), // Space at the top

                // Shopping Icon or Logo
                const Icon(
                  Icons.shopping_bag_outlined, // Shopping-related icon
                  size: 80,
                  color: Colors.orange, // Color for the icon
                ),
                const SizedBox(height: 20),

                // Login Text
                const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),

                // Text Field for Mobile/Email
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40), // 80% width
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter mobile number or email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Text Field for Password
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40), // 80% width
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Enter password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                // Forgot Password Text
                Padding(
                  padding:
                      const EdgeInsets.only(right: 40), // Align to the right
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ),
                ),
                const SizedBox(height: 30),

                // Login Button
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8, // 80% width
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange, // Orange button
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      // Handle login
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),

                // Divider with OR
                Row(
                  children: [
                    const Expanded(
                      child: Divider(thickness: 1),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'OR',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Expanded(
                      child: Divider(thickness: 1),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Continue with Facebook Button
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8, // 80% width
                  height: 50,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Blue Facebook button
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    icon: const Icon(Icons.facebook, color: Colors.white),
                    onPressed: () {
                      // Handle Facebook login
                    },
                    label: const Text(
                      'Continue with Facebook',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                // Continue with Google Button
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8, // 80% width
                  height: 50,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.white, // White background for Google
                      side: const BorderSide(
                          color: Colors.grey), // Border for Google button
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    icon: const Icon(Icons.g_translate, color: Colors.black),
                    onPressed: () {
                      // Handle Google login
                    },
                    label: const Text(
                      'Continue with Google',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                // Continue with Email Button
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8, // 80% width
                  height: 50,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[200], // Light grey for email
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    icon: const Icon(Icons.email_outlined, color: Colors.black),
                    onPressed: () {
                      // Handle email login
                    },
                    label: const Text(
                      'Continue with Email',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // New User? Register Button
                const Text('New User?'),
                const SizedBox(height: 10),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5, // 50% width
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.orange, // Orange button for register
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      // Handle registration
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 20), // Space for scrolling content
              ],
            ),
          ),

          // Help/Chat Section Fixed to Bottom with Divider
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Divider(thickness: 1),
                GestureDetector(
                  onTap: () {
                    // Navigate to help/chat
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'Help/Chat',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
