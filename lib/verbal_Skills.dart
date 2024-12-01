import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VerbalSkillsScreen extends StatelessWidget {
  const VerbalSkillsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFFFBF5F2),
            borderRadius: BorderRadius.circular(30),
          ),
          constraints: const BoxConstraints(maxWidth: 480),
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 51, vertical: 22),
                color: const Color.fromRGBO(229, 229, 229, 0.8),
                child: Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'Verbal skills',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color.fromRGBO(0, 0, 0, 0.9),
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                    Image.asset(
                      'assets/images/img_ellipse_1.png',
                      width: 31,
                      height: 27,
                    ),
                    const Text(
                      '3',
                      style: TextStyle(
                        color: Color(0xFFECC055),
                        fontSize: 25,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    Image.asset(
                      'assets/images/img_ellipse_1.png',
                      width: 28,
                      height: 25,
                    ),
                    const Text(
                      '213',
                      style: TextStyle(
                        color: Color(0xFF02A1FB),
                        fontSize: 25,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 9),
              Image.asset(
                'assets/images/img_ellipse_1.png',
                width: 124,
                height: 98,
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.fromLTRB(29, 64, 29, 10),
                width: 211,
                decoration: BoxDecoration(
                  color: const Color(0xFFE9E8E8),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color.fromRGBO(0, 0, 0, 0.2),
                    width: 3,
                  ),
                ),
                child: Column(
                  children: [
                    const Text(
                      'Unit 1',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/img_ellipse_1.png',
                          width: 107,
                          height: 27,
                        ),
                        const SizedBox(width: 16),
                        const Text(
                          '3/40',
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.5),
                            fontSize: 15,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              _buildLessonTile(
                'Intro',
                'assets/images/img_ellipse_1.png',
                '1',
                marginTop: 64,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildLessonTile(
                    'Phrases',
                    'assets/images/img_ellipse_1.png',
                    '1',
                  ),
                  const SizedBox(width: 17),
                  _buildLessonTile(
                    'Travel',
                    'assets/images/img_ellipse_1.png',
                    '1',
                  ),
                ],
              ),
              const SizedBox(height: 164),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLessonTile(String title, String iconPath, String number,
      {double marginTop = 5}) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: marginTop),
          width: 140,
          height: 140,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/tile_background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      iconPath,
                      width: 86,
                      height: 67,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        number,
                        style: const TextStyle(
                          fontSize: 15,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontFamily: 'Roboto',
          ),
        ),
      ],
    );
  }
}
