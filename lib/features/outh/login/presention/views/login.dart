import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';

import '../../../../../../core/utils/custom_button.dart';
import '../../../../../../core/utils/custom_text_field.dart';
import '../../../../../core/utils/custom_text_button.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/login.png'),
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
              Image(
                image: AssetImage('assets/images/logo.png'),
              ),
              Text(
                'LogIn today',
                style: TextStyle(
                  fontFamily: "Switzer",
                  color: Colors.white70,
                  fontSize: 33,
                ),
              ),
              SizedBox(height: 30),
              const CustomTextField(
                hintText: 'youremail@mail.com',
                suffixIcon: Icon(Icons.email),
              ),
              SizedBox(height: 30),
              const CustomTextField(
                hintText: 'password',
                suffixIcon: Icon(Icons.lock_outline),
              ),
              SizedBox(height: 40),
              CustomActionButton(
                onTap: () {},
                text: 'LogIn',
                borderRadius: BorderRadius.circular(20),
                backGroundColor: AppColors.textAndBackgroundColorButton,
                height: 55,
                width: 398,
                style: TextStyle(
                  fontFamily: "Switzer",
                  color: Colors.white70,
                  fontSize: 33,
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Didn’t have any account?',
                    style: TextStyle(
                      fontFamily: "Switzer",
                      color: Colors.white70,
                      fontSize: 33,
                    ),
                  ),
                  DefaultTextButton(
                    onPressed: () {
                      GoRouter.of(context).go('/register');
                    },
                    text: ' Sign Up here',
                  ),
                ],
              ),
            ],
          ),
        ),
      )
    ]));
  }
}
