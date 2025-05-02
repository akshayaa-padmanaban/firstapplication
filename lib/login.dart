import 'package:flutter/material.dart';
import 'dashboard.dart';
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 50,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFB993D6), Color(0xFF8CA6DB)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 50,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFB993D6), Color(0xFF8CA6DB)],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 140,
                  child: Image.asset(
                    'assets/images/logo.jpg',
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 250,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24, vertical: 32),
                  decoration: BoxDecoration(
                    color: Color(0xFFB993D6).withOpacity(0.7),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 20),
                      _inputField(Icons.person, "User Name"),
                      const SizedBox(height: 16),
                      _inputField(Icons.lock, "Password", obscureText: true),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          const Spacer(),
                          const Text(
                            "Forgot Password",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Dashboard()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF8CA6DB).withOpacity(0.4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          minimumSize: const Size.fromHeight(45),
                        ),
                        child: const Text(
                          "LOGIN",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _inputField(IconData icon, String hint, {bool obscureText = false}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        obscureText: obscureText,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: Colors.black),
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.black),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
