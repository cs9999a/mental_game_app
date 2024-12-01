import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class LearningProgressScreen extends StatelessWidget {
  const LearningProgressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFFBF5F2),
          borderRadius: BorderRadius.circular(30),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 75, 20, 25),
            child: Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 48, vertical: 21),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CachedNetworkImage(
                            imageUrl:
                                "https://cdn.builder.io/api/v1/image/assets/862c5b82d300491da5746b94a28aaf1d/7d63b34e4ee00fbc6adfa0c65ee99e914275286317f989135fe64ceb1636e61d?apiKey=862c5b82d300491da5746b94a28aaf1d&",
                            width: 26,
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "3",
                            style: TextStyle(
                              color: const Color(0xFFEB9F4A),
                              fontSize: 25,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CachedNetworkImage(
                            imageUrl:
                                "https://cdn.builder.io/api/v1/image/assets/862c5b82d300491da5746b94a28aaf1d/de413e283ad0b6e0b9f3ac0366db7cd56768d4ed437e485f28f2ba9d3033dfe2?apiKey=862c5b82d300491da5746b94a28aaf1d&",
                            width: 30,
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "1432 XP",
                            style: TextStyle(
                              color: const Color(0xFF338F9B),
                              fontSize: 25,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ],
                      ),
                      CachedNetworkImage(
                        imageUrl:
                            "https://cdn.builder.io/api/v1/image/assets/862c5b82d300491da5746b94a28aaf1d/d8d24c09e7080278722bcd06726d5aa8f8edf8ab11147f85975b4ef33fae8785?apiKey=862c5b82d300491da5746b94a28aaf1d&",
                        width: 77,
                        placeholder: (context, url) =>
                            const CircularProgressIndicator(),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 53),
                _buildSection(
                  title: "Logical reasoning",
                  progress: "18/40",
                  unit1Image:
                      "https://cdn.builder.io/api/v1/image/assets/862c5b82d300491da5746b94a28aaf1d/83e2235295f2463104ecef2ddd8b7c3990e7eefd09d4b2ed2b7f966bb2326a1f?apiKey=862c5b82d300491da5746b94a28aaf1d&",
                ),
                const SizedBox(height: 35),
                _buildSection(
                  title: "Artistic thinking",
                  progress: "35/40",
                  unit1Image:
                      "https://cdn.builder.io/api/v1/image/assets/862c5b82d300491da5746b94a28aaf1d/9f8a51889d5f2f7f9acb9f97223b9be2f4bddad93de76a4477a2d7407b452e8c?apiKey=862c5b82d300491da5746b94a28aaf1d&",
                ),
                const SizedBox(height: 35),
                _buildSection(
                  title: "Verbal skills",
                  progress: "3/40",
                  unit1Image:
                      "https://cdn.builder.io/api/v1/image/assets/862c5b82d300491da5746b94a28aaf1d/04b65e4be838178cf058050e2df6fffce510ce3d1b259c6199ccad89d83e032a?apiKey=862c5b82d300491da5746b94a28aaf1d&",
                ),
                const SizedBox(height: 34),
                CachedNetworkImage(
                  imageUrl:
                      "https://cdn.builder.io/api/v1/image/assets/862c5b82d300491da5746b94a28aaf1d/983163f3322432e2ee0035287c6f6220502d8a11ac0ee225723c7a00c1c6c390?apiKey=862c5b82d300491da5746b94a28aaf1d&",
                  width: 377,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSection({
    required String title,
    required String progress,
    required String unit1Image,
  }) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Color(0xE6000000),
                  fontSize: 35,
                  fontFamily: 'Roboto',
                ),
              ),
              Row(
                children: [
                  CachedNetworkImage(
                    imageUrl:
                        "https://cdn.builder.io/api/v1/image/assets/862c5b82d300491da5746b94a28aaf1d/2b1eabfd35f057eb9dbda4832013690b66c7c957c10819e7ec8e23b4bfe5de28?apiKey=862c5b82d300491da5746b94a28aaf1d&",
                    width: 31,
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                  Text(
                    progress,
                    style: const TextStyle(
                      color: Color(0x99000000),
                      fontSize: 20,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 9),
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    const Text(
                      "Unit 1",
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    const SizedBox(height: 130),
                    CachedNetworkImage(
                      imageUrl: unit1Image,
                      width: 155,
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 84, horizontal: 36),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: CachedNetworkImage(
                  imageUrl:
                      "https://cdn.builder.io/api/v1/image/assets/862c5b82d300491da5746b94a28aaf1d/0a0592b611422406e20b5b122dfcf3719c76b14b4cde832a337e00374b0ea46b?apiKey=862c5b82d300491da5746b94a28aaf1d&",
                  width: 47,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
