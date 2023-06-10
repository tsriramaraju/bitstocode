import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_app/components/button/primary_button.dart';
import 'package:user_app/constants/colors.dart';
import 'package:user_app/constants/illustrations.dart';
import 'package:user_app/home.dart';
import 'package:user_app/screens/onboarding/onboarding.dart';
import 'package:user_app/screens/skillExploration/skill_exploration.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();

    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    void handleLogin() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    }

    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 50),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            height: 300,
            child: SvgPicture.asset(KLogin),
          ),
          const SizedBox(height: 25),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 46),
            margin: const EdgeInsets.all(18),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: KDarkShadeColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Login",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.comfortaa(
                    fontSize: 30,
                    color: KLightShadeColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 28),
                TextField(
                  controller: _emailController,
                  focusNode: _emailFocusNode,
                  keyboardType: TextInputType.emailAddress,
                  onSubmitted: (val) {
                    _passwordFocusNode.requestFocus();
                  },
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: const OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                    labelStyle: TextStyle(
                      color: _emailFocusNode.hasFocus
                          ? Colors.white
                          : KMediumShadeColor,
                    ),
                  ),
                ),
                const SizedBox(height: 28),
                TextField(
                  controller: _passwordController,
                  focusNode: _passwordFocusNode,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: const OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                    labelStyle: TextStyle(
                      color: _passwordFocusNode.hasFocus
                          ? KAccentColor
                          : KMediumShadeColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          PrimaryButton(
            text: 'Login',
            onClick: handleLogin,
          ),
          const SizedBox(height: 12),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SkillExplorationScreen()));
            },
            child: RichText(
              text: TextSpan(
                text: 'New to Bitstocode ?',
                style: GoogleFonts.nunito(
                  fontSize: 14,
                  color: KMediumShadeColor,
                ), // Default style for the entire text
                children: <TextSpan>[
                  TextSpan(
                    text: ' Register here',
                    style: GoogleFonts.delius(
                      fontSize: 14,
                      color: KAccentColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
