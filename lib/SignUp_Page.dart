import 'package:flutter/material.dart';
import 'LogIn_Page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool obscurePassword = true;
  bool obscureConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: width*0.9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                height: height*0.1,
                width: height*0.1,
                child: Image.asset('assets/clim8_logo.png'),
              ),

              SizedBox(height: height*0.04),

              Text(
                'Create Your Account',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: height*0.025,
                ),
              ),

              SizedBox(height: height*0.04),

              Container(
                height: height*0.06,
                child: TextField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: 'Full Name',
                    hintStyle: TextStyle(
                      fontSize: height*0.015,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                    ),
                    prefixIcon: Icon(Icons.person_2_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),

              SizedBox(height: height*0.01),

              Container(
                height: height*0.06,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: 'Email-Id',
                    hintStyle: TextStyle(
                      fontSize: height*0.015,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                    ),
                    prefixIcon: Icon(Icons.email_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),

              SizedBox(height: height*0.01),

              Container(
                height: height*0.06,
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                  obscureText: obscurePassword,
                  obscuringCharacter: '•',
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      fontSize: height*0.015,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                    prefixIcon: Icon(Icons.lock_outline),
                    suffixIcon: IconButton(
                      color: Colors.grey,
                      onPressed: () {
                        setState(() {
                          obscurePassword = !obscurePassword;
                        });
                      },
                      icon: obscurePassword ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
                    ),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),

              SizedBox(height: height*0.01),

              Container(
                height: height*0.06,
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                  obscureText: obscureConfirmPassword,
                  obscuringCharacter: '•',
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    hintStyle: TextStyle(
                      fontSize: height*0.015,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                    prefixIcon: Icon(Icons.lock_outline),
                    suffixIcon: IconButton(
                      color: Colors.grey,
                      onPressed: () {
                        setState(() {
                          obscureConfirmPassword = !obscureConfirmPassword;
                        });
                      },
                      icon: obscureConfirmPassword ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
                    ),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),

              SizedBox(height: height*0.03),

              Container(
                width: width*0.9,
                height: height*0.06,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: height*0.015,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),

              SizedBox(height: height*0.015),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text(
                    'Already have an account?',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 8),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}