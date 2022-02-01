import 'package:crypto_app/src/pages/home_page.dart';
import 'package:crypto_app/src/shared/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 50),
              Center(
                child: Image.asset(
                  'assets/images/launch_image.png',
                  scale: 5,
                ),
              ),
              Center(
                child: Text('Olá, Bem-vindo!',
                    style: Theme.of(context).textTheme.headline5),
              ),
              const SizedBox(height: 20),
              GlassContainer.clearGlass(
                  elevation: 2,
                  borderRadius: BorderRadius.circular(7),
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          autofillHints: const [AutofillHints.email],
                        ),
                      ),
                      const SizedBox(height: 30),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          autofillHints: const [AutofillHints.password],
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width * 0.2),
                      PrimaryButton(
                        text: 'Entrar',
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                          );
                        },
                      ),
                    ],
                  )),
              const SizedBox(height: 40),
              GestureDetector(
                onTap: () {},
                child: Center(
                  child: Image.asset(
                    'assets/buttons/google_logo.png',
                    scale: 9,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
