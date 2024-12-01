import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBF5F2),
      body: SingleChildScrollView(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 480),
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: 89),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildColoredText('M', const Color(0xFFEB9F4A)),
                    _buildColoredText('E', const Color(0xFF77B29F)),
                    _buildColoredText('N', const Color(0xFFAB70DF)),
                    _buildColoredText('T', const Color(0xFF6884F6)),
                    _buildColoredText('A', const Color(0xFFECC055)),
                    _buildColoredText('L', const Color(0xFF77B29F)),
                    _buildColoredText('^', const Color(0xFFAB70DF)),
                    _buildColoredText('u', const Color(0xFF6884F6)),
                    _buildColoredText('p', const Color(0xFFECC055)),
                    _buildColoredText('^', const Color(0xFF77B29F)),
                  ],
                ),
                const SizedBox(height: 65),
                TextFormField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: const TextStyle(
                      color: Color(0x66000000),
                      fontSize: 18,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 31,
                      vertical: 20,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: const TextStyle(
                      color: Color(0x66000000),
                      fontSize: 18,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 31,
                      vertical: 20,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFEB9F4A),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 70,
                      vertical: 15,
                    ),
                  ),
                  child: const Text(
                    'GO',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 41),
                RichText(
                  text: TextSpan(
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                    children: [
                      const TextSpan(text: "Don't have account yet? "),
                      TextSpan(
                        text: 'Sign Up',
                        style: const TextStyle(color: Color(0xFF77B29F)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Image.network(
                  'https://cdn.builder.io/api/v1/image/assets/862c5b82d300491da5746b94a28aaf1d/da9a81517c8284d773eeeff41dcc16e27d5d6e8d9ac0c67e5d4c05f0163a3357?apiKey=862c5b82d300491da5746b94a28aaf1d&',
                  width: double.infinity,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildColoredText(String text, Color color) {
    return Text(
      text,
      style: GoogleFonts.ribeye(
        fontSize: 40,
        color: color,
      ),
    );
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
