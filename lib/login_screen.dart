import 'package:flutter/material.dart';
import 'auth_service.dart';
import 'signup_screen.dart';
import 'reset_password_screen.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() async {
    final user = await AuthService().signInWithEmailAndPassword(
      emailController.text,
      passwordController.text,
      context,
    );
    if (user != null) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    }
  }

  void navigateToSignUp() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
  }

  void navigateToResetPassword() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => ResetPasswordScreen()));
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.8;
    double maxWidth = 400;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.pink.shade100, Colors.pink.shade300],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Container(
              width: width < maxWidth ? width : maxWidth,
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("เข้าสู่ระบบ", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.pink.shade700)),
                  SizedBox(height: 20),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: "อีเมล",
                      labelStyle: TextStyle(color: Colors.pink.shade700),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink.shade700),
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      labelText: "รหัสผ่าน",
                      labelStyle: TextStyle(color: Colors.pink.shade700),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink.shade700),
                      ),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: login,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink.shade700,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      minimumSize: Size(double.infinity, 50),
                    ),
                    child: Text("เข้าสู่ระบบ", style: TextStyle(fontSize: 18)),
                  ),
                  TextButton(
                    onPressed: navigateToSignUp,
                    child: Text("สร้างบัญชีใหม่", style: TextStyle(color: Colors.pink.shade700)),
                  ),
                  TextButton(
                    onPressed: navigateToResetPassword,
                    child: Text("ลืมรหัสผ่าน?", style: TextStyle(color: Colors.pink.shade700)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
