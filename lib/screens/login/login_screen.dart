import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    void _signIn() {
      String email = emailController.text;
      String password = passwordController.text;

      if (email == 'daniel@gmail.com' && password == '123456') {
        Navigator.pushNamed(context, '/menu');
      } else {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Error'),
            content: Text('Email or password is incorrect'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('OK'),
              ),
            ],
          ),
        );
      }
    }

    return Scaffold(
      body: Row(
        children: [
          // Left side with illustration
          Expanded(
            flex: 2,
            child: Container(
              color: Color(0xFFF5E1B7), // Updated color
              child: Center(
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/logoResto.png'),
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Right side with login form
          Expanded(
            flex: 3,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Hello Again!',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Welcome back you\'ve been missed!',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 40),
                    // Centering only email and password fields and the button
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Email TextField
                          SizedBox(
                            width: 300,
                            child: TextField(
                              controller: emailController,
                              decoration: InputDecoration(
                                labelText: 'Enter username',
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          // Password TextField
                          SizedBox(
                            width: 300,
                            child: TextField(
                              controller: passwordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          // Sign In Button
                          SizedBox(
                            width: 300,
                            child: ElevatedButton(
                              onPressed: _signIn,
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(
                                    double.infinity, 50), // Set button size
                                backgroundColor:
                                    const Color(0xFFFBB03B), // Updated color
                              ),
                              child: Text(
                                'Sign In',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
