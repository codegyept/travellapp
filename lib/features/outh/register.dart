import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/utils/custom_button.dart';
import '../../../core/utils/custom_text_button.dart';
import '../../../core/utils/custom_text_field.dart';
import '../../core/utils/app_colors.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/register.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            SizedBox(height: 15),
            const Image(
              image: AssetImage('assets/images/logo.png'),
            ),
            SizedBox(height: 15),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Register now',
                  style: TextStyle(
                      fontFamily: "Switzer",
                      color: Colors.white70,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            CustomTextField(
              hintText: 'your name',
              suffixIcon: Icon(Icons.person),
            ),
            SizedBox(height: 5),
            CustomTextField(
              hintText: 'youremail@mail.com',
              suffixIcon: Icon(Icons.email),
            ),
            SizedBox(height: 5),
            CustomTextField(
              hintText: 'password',
              suffixIcon: Icon(Icons.lock_outline),
            ),
            SizedBox(height: 10),
            CustomActionButton(
              onTap: () {},
              text: 'Sign Up',
              borderRadius: BorderRadius.circular(20),
              backGroundColor: AppColors.textAndBackgroundColorButton,
              height: 55,
              width: double.infinity,
              style: const TextStyle(
                fontFamily: "Switzer",
                color: Colors.white70,
                fontSize: 33,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'If you have an account? ',
                  style: TextStyle(
                      fontFamily: "Switzer",
                      color: Colors.white70,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                DefaultTextButton(
                  onPressed: () {
                    GoRouter.of(context).go('/login');
                  },
                  text: 'Sign In here',
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'By clicking Sign up, you agree to our ',
                  style: TextStyle(
                    fontFamily: "Switzer",
                    color: Colors.white70,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DefaultTextButton(
                  onPressed: () {},
                  text: 'Terms',
                ),
                const Text('and'),
                DefaultTextButton(
                  onPressed: () {},
                  text: 'Privacy Policy',
                ),
              ],
            ),
          ],
        ),
      )),
    ]));
  }
}
