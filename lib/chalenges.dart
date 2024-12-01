import 'package:flutter/material.dart';

class ChallengesScreen extends StatelessWidget {
  const ChallengesScreen({Key? key}) : super(key: key);

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 75),
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(vertical: 18, horizontal: 70),
                color: const Color.fromRGBO(229, 229, 229, 0.8),
                child: const Text(
                  'Challenges',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.black.withOpacity(0.1),
                          width: 3,
                        ),
                      ),
                      padding: const EdgeInsets.fromLTRB(13, 6, 46, 6),
                      child: Row(
                        children: [
                          Image.network(
                            'https://cdn.builder.io/api/v1/image/assets/862c5b82d300491da5746b94a28aaf1d/05c5ed3cc801830ea8502ad233d2543bdec1adb170667d417c73daad7284e7c6?apiKey=862c5b82d300491da5746b94a28aaf1d&',
                            width: 116,
                            fit: BoxFit.contain,
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Complete 1000 word streak',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 9),
                                Text(
                                  'Win 1000XP along with 300 diamonds.',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 31),
                    const Text(
                      'Achievements',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 31),
                    AchievementTile(
                      imageUrl:
                          'https://cdn.builder.io/api/v1/image/assets/862c5b82d300491da5746b94a28aaf1d/3335f4ab8673c4e1d15ad2f5f389e39d2e9e6b316b3a3dadc7b48352ee784efc?apiKey=862c5b82d300491da5746b94a28aaf1d&',
                      imageWidth: 140,
                      title: '1000 words\nit is\nFantastic to achive',
                      padding: const EdgeInsets.symmetric(vertical: 10),
                    ),
                    const SizedBox(height: 42),
                    AchievementTile(
                      imageUrl:
                          'https://cdn.builder.io/api/v1/image/assets/862c5b82d300491da5746b94a28aaf1d/c151f22a009303217d998f27484922a415c6c447f2d3080ca42d29d6dc5f9329?apiKey=862c5b82d300491da5746b94a28aaf1d&',
                      imageWidth: 122,
                      title: '100 statements\nit is\nFantastic to achive',
                      padding: const EdgeInsets.only(bottom: 20),
                    ),
                    const SizedBox(height: 28),
                    AchievementTile(
                      imageUrl:
                          'https://cdn.builder.io/api/v1/image/assets/862c5b82d300491da5746b94a28aaf1d/e0d33c081687b21ee40442f711fdf608bca6639e3565a151e4c1e2eccafcaa17?apiKey=862c5b82d300491da5746b94a28aaf1d&',
                      imageWidth: 146,
                      title:
                          'Golden Level\nYou Success and compleet golden level',
                      padding: const EdgeInsets.symmetric(vertical: 13),
                    ),
                    const SizedBox(height: 28),
                    Center(
                      child: Image.network(
                        'https://cdn.builder.io/api/v1/image/assets/862c5b82d300491da5746b94a28aaf1d/5100b3231be486a38314d381dc69599bc871a0dcad4612a5b0da8d79699d44dd?apiKey=862c5b82d300491da5746b94a28aaf1d&',
                        width: 377,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 19),
            ],
          ),
        ),
      ),
    );
  }
}

class AchievementTile extends StatelessWidget {
  final String imageUrl;
  final double imageWidth;
  final String title;
  final EdgeInsets padding;

  const AchievementTile({
    Key? key,
    required this.imageUrl,
    required this.imageWidth,
    required this.title,
    required this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.black.withOpacity(0.1),
          width: 3,
        ),
      ),
      padding: padding,
      child: Row(
        children: [
          Image.network(
            imageUrl,
            width: imageWidth,
            fit: BoxFit.contain,
          ),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
