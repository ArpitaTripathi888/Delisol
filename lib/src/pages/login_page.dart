import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static const routeName = '/login-page';
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isNotVisible = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Image.asset(
              'assets/images/login_girl.png',
              width: (mediaQuery.width / 100) * 50.0,
              height: (mediaQuery.height / 100) * 35.5,
              fit: BoxFit.contain,
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              'Let\'s Sign You In.',
              style: GoogleFonts.lato(
                fontSize: 32.5,
                letterSpacing: 1.0,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            Text(
              'Welcome back\nYou have been missed!',
              style: GoogleFonts.lato(
                fontSize: 15.5,
                color: Colors.grey.shade800,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    width: 1.5,
                    color: Colors.grey.shade600,
                  ),
                ),
                labelText: "email",
                labelStyle: GoogleFonts.lato(
                  fontSize: 15.5,
                  color: Colors.grey.shade800,
                  fontWeight: FontWeight.w700,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    width: 1.5,
                    color: Colors.grey.shade600,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    width: 1.2,
                    color: Colors.grey.shade800,
                  ),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextField(
              controller: _passwordController,
              obscureText: _isNotVisible,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    width: 1.2,
                    color: Colors.grey.shade800,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    width: 1.2,
                    color: Colors.grey.shade800,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    width: 1.2,
                    color: Colors.grey.shade800,
                  ),
                ),
                labelText: "password",
                labelStyle: GoogleFonts.lato(
                  fontSize: 15.5,
                  color: Colors.grey.shade800,
                  fontWeight: FontWeight.w700,
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _isNotVisible = !_isNotVisible;
                    });
                  },
                  icon: Icon(Icons.remove_red_eye_outlined,
                      color: _isNotVisible
                          ? Colors.grey.shade800
                          : Colors.yellow.shade900),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
            ),

            //button
            const SizedBox(
              height: 50.0,
            ),
            Align(
              child: RichText(
                text: TextSpan(
                    text: 'Don\'t have an account? ',
                    style: GoogleFonts.lato(
                      fontSize: 15.5,
                      color: Colors.grey.shade900,
                      fontWeight: FontWeight.w700,
                    ),
                    children: [
                      TextSpan(
                        text: "Sign up",
                        style: GoogleFonts.lato(
                          fontSize: 15.5,
                          color: Colors.yellow.shade800,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ]),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              padding: const EdgeInsets.all(10.0),
              width: double.infinity,
              height: 65.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28.0),
                color: Colors.yellow.shade800,
              ),
              alignment: Alignment.center,
              child: Text(
                "Sign in",
                style: GoogleFonts.lato(
                  fontSize: 16.5,
                  color: Colors.grey.shade50,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            const SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
      //Center(child: Text('login page')),
    );
  }
}
