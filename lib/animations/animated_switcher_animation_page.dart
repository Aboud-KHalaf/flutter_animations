import 'package:flutter/material.dart';

class AnimatedSwitcherAnimationPage extends StatefulWidget {
  static const String id = "animated_switcher";

  const AnimatedSwitcherAnimationPage({super.key});

  @override
  State<AnimatedSwitcherAnimationPage> createState() =>
      _AnimatedSwitcherAnimationPageState();
}

class _AnimatedSwitcherAnimationPageState
    extends State<AnimatedSwitcherAnimationPage> {
  bool _isLoggedIn = false;

  void _handleLogin() {
    setState(() {
      _isLoggedIn = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedSwitcher - Login Success"),
      ),
      body: Center(
        child: AnimatedSwitcher(
          duration: const Duration(seconds: 1),
          switchInCurve: Curves.easeIn,
          switchOutCurve: Curves.easeOut,
          child: _isLoggedIn
              ? _buildSuccessScreen()
              : _buildLoginScreen(), // Switch between two screens
        ),
      ),
    );
  }

  Widget _buildLoginScreen() {
    return Column(
      key: const ValueKey("loginScreen"), // Unique key for login screen
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Login",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: TextField(
            decoration: InputDecoration(
              labelText: "Username",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: _handleLogin,
          child: const Text("Login"),
        ),
      ],
    );
  }

  Widget _buildSuccessScreen() {
    return Column(
      key: const ValueKey("successScreen"), // Unique key for success screen
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.check_circle,
          color: Colors.green,
          size: 100,
        ),
        const SizedBox(height: 20),
        const Text(
          "Login Successful!",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _isLoggedIn = false; // Reset to login screen
            });
          },
          child: const Text("Go Back"),
        ),
      ],
    );
  }
}
