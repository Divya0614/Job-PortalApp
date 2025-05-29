import 'package:flutter/material.dart';
import 'package:oommaa_abroad/screens/home_screen.dart';
import 'package:oommaa_abroad/theme/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fullscreen gradient background
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 182, 248, 239),
                  Color.fromARGB(255, 218, 200, 255),
                  Color.fromARGB(255, 255, 236, 179),
                ],
              ),
            ),
          ),

          // Foreground content
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              Center(
                child: Image.asset(
                  "assets/oommaa2-logo.png",
                  width: MediaQuery.of(context).size.width / 1,
                ),
              ),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Global Job Portal",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Welcome to the OOMMAA Global job portal, your dream job starts here!",
                  style: TextStyle(color: Colors.black54, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              const Spacer(),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  child: Container(
                    height: 65,
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                      color: colors.primary,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Get Started",
                          style: TextStyle(
                            fontSize: 20,
                            color: colors.background,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: colors.background,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ],
      ),
    );
  }
}
