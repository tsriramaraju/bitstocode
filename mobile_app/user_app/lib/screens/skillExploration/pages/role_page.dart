import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_app/constants/colors.dart';
import 'package:user_app/constants/illustrations.dart';
import 'package:user_app/constants/images.dart';

class RolePage extends StatelessWidget {
  const RolePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back, color: KMediumShadeColor),
                ),
                Text(
                  "Frontend Developer",
                  style: GoogleFonts.delius(
                    fontSize: 24,
                    // fontWeight: FontWeight.w600,
                    color: KBrandColor,
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(children: [
                  const SizedBox(height: 30),
                  SvgPicture.asset(KFrontend, height: 200),
                  const SizedBox(height: 30),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "As a Full Stack Developer, you'll create complete web applications by working on both the user interface and server-side logic. You'll shape the digital experiences that people have online—everything from simple websites to complex software applications. Industries like tech, finance, healthcare, and even entertainment seek your skills. The future? Boundless, with a growing demand for your all-around expertise!",
                      style: GoogleFonts.nunito(
                        fontSize: 16,
                        color: KDarkShadeColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Heading("Experience Level"),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "This role is suited for Intermediate to Advanced levels.",
                      style: GoogleFonts.nunito(
                        fontSize: 16,
                        color: KDarkShadeColor,
                      ),
                    ),
                  ),
                  Image.asset(
                    KExperience,
                    height: 50,
                  ),
                  const SizedBox(height: 20),
                  const SizedBox(height: 20),
                  const Heading("Career Growth"),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "As an experienced Full Stack Developer, you could step into roles like Senior Developer, Tech Lead, or even Software Architect. Plenty of room to grow and lead in this field!",
                      style: GoogleFonts.nunito(
                        fontSize: 16,
                        color: KDarkShadeColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Heading("Salary Range"),
                  const SizedBox(height: 20),
                  Image.asset(
                    KGraph,
                    height: 200,
                  ),
                  const SizedBox(height: 20),
                  const Heading("Tech Skills"),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "1. HTML/CSS\n2. JavaScript\n3. Backend Language (Python/Java/Ruby/PHP)\n4. Database Management\n5. Version Control/Git\n6. RESTful APIs\n7. Debugging\n8. Testing/Quality Assurance\n9. Deployment and Hosting\n10. Security Fundamentals",
                      style: GoogleFonts.nunito(
                        fontSize: 16,
                        color: KDarkShadeColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Heading extends StatelessWidget {
  final String title;
  const Heading(
    this.title, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.comfortaa(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: KBrandColor,
      ),
    );
  }
}
