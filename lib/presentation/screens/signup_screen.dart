import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 50), // Top space

                // Logo
                const Icon(
                  Icons.shopping_bag_outlined, // Shopping-related icon
                  size: 80,
                  color: Colors.orange,
                ),
                const SizedBox(height: 20),

                // Register Text
                const Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),

                // Phone Number Input with Country Code
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40), // 80% width
                  child: Row(
                    children: [
                      // Country Code Picker
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Row(
                          children: [
                            Text(
                                '+1'), // Hardcoded for now, you can integrate country picker package
                            Icon(Icons.arrow_drop_down),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),

                      // Phone Number Input Field
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Enter phone number',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Full Name Input Field
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40), // 80% width
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Full Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Email Input Field
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40), // 80% width
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Password Input Field
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40), // 80% width
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),

                // Register Button
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
                      // Handle registration
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Agree to Terms and Conditions Text
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40), // Centered
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                        value:
                            true, // Hardcoded checked, adjust logic as needed
                        onChanged: (value) {},
                      ),
                      const Text('Agree to terms & conditions'),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Already have an account? Login
                const Text('Already have an account?'),
                const SizedBox(height: 10),

                // Login Button
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5, // 50% width
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange, // Orange button for login
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      // Navigate to login screen
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 20), // Bottom space
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
