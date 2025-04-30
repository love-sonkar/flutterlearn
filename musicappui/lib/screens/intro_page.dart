import 'package:flutter/material.dart';
import 'package:musicappui/screens/home_page.dart';
import 'package:musicappui/utils/colors.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  final bgImage =
      "https://images.pexels.com/photos/31833615/pexels-photo-31833615/free-photo-of-black-and-white-portrait-of-guitarist-in-australia.jpeg?auto=compress&cs=tinysrgb&w=600";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(bgImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Spacer(),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    MyColors.primaryBlack.withValues(alpha: 0),
                    MyColors.primaryBlack.withValues(alpha: 0.8),
                    MyColors.primaryBlack,
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 70,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 0, 1),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 3.0,
                          horizontal: 10,
                        ),
                        child: Row(
                          spacing: 4,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 155, 26, 26),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            Text('Live', style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                    ),

                    Text(
                      "Music Without Borders",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Create Playlist, find new tracks and listen to your favorite music anytime!",
                      style: TextStyle(fontSize: 18, color: MyColors.lightGray),
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 15,
                        ),
                        margin: EdgeInsets.only(bottom: 40),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: MyColors.accentGreen,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "Get Started",
                            style: TextStyle(
                              color: MyColors.lightGray,
                              fontSize: 19,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
