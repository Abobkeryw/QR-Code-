import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();

  ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F4FF),
      appBar: AppBar(
        title: const Text("Forgot Password" , style:  TextStyle(color: Colors.white),),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const Text(
              "Enter your email to receive password reset instructions.",
              style: TextStyle(fontSize: 16 ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.email),
                hintText: "Enter your Gmail",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add Firebase reset password logic here
                print("Reset link sent to: ${emailController.text.trim()}");
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("Reset email sent!"),
                  backgroundColor: Colors.green,
                ));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurpleAccent,
              ),
              child: const Text("Send Reset Email", style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
