import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reserve_io/features/home/presentation/pages/homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Create an account?'),
            TextButton(onPressed: () {}, child: const Text('Sign Up'))
          ],
        )
      ],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/Image1.png'),
              Text(
                'OfficeReserve',
                style: GoogleFonts.openSans(
                    fontSize: 30, fontWeight: FontWeight.w500),
              ),
              Text(
                'Reserve office resources efficiently',
                style: GoogleFonts.openSans(
                    fontSize: 16, fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [BoxShadow(blurRadius: 2)],
                          borderRadius: BorderRadius.circular(20)),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Company ID',
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.house),
                        ),
                      ))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [BoxShadow(blurRadius: 2)],
                          borderRadius: BorderRadius.circular(20)),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            hintText: 'Email',
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.email)),
                      ))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [BoxShadow(blurRadius: 2)],
                        borderRadius: BorderRadius.circular(20)),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'Password',
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.lock)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 190),
                child: TextButton(
                  onPressed: () {},
                  child: Text('Forgot Password',
                      style: GoogleFonts.openSans(color: Colors.black)),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => Homepage()),
                ),
                child: Container(
                  width: 300,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: Text(
                      'Sign In',
                      style: GoogleFonts.openSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  Expanded(
                    child: Divider(
                      indent: 30,
                      endIndent: 20,
                    ),
                  ),
                  Text('Or'),
                  Expanded(
                    child: Divider(
                      indent: 20,
                      endIndent: 10,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                      child: Text(
                        'Google',
                        style: GoogleFonts.openSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                    width: 150,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                      child: Text(
                        'Facebook',
                        style: GoogleFonts.openSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
