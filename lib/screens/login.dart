import 'package:flutter/material.dart';
import 'package:login_signup_ui_starter/screens/reset_password.dart';
import 'package:login_signup_ui_starter/screens/signup.dart';
import 'package:login_signup_ui_starter/theme.dart';
import 'package:login_signup_ui_starter/widgets/login_form.dart';
import 'package:login_signup_ui_starter/widgets/login_option.dart';
import 'package:login_signup_ui_starter/widgets/primary_button.dart';

class LogInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: kDefaultPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 120,
              ),
              Image.asset(
                'images/tot.png',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.2,
                scale: 5,
              ),
              Text(
                'NT จำกัด (มหาชน)',
                style: titleText,
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    'ยังไม่ได้เป็นสมาสิก?',
                    style: subTitle,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'สมัครสมาชิก',
                      style: textButton.copyWith(
                        decoration: TextDecoration.underline,
                        decorationThickness: 1,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              LogInForm(),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResetPasswordScreen()));
                },
                child: Text(
                  'ลืมรหัสผ่าน?',
                  style: TextStyle(
                    color: kZambeziColor,
                    fontSize: 14,
                    decoration: TextDecoration.underline,
                    decorationThickness: 1,
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              PrimaryButton(
                buttonText: 'เข้าสู้ระบบ',
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '',
                style: subTitle.copyWith(color: kBlackColor),
              ),
              SizedBox(
                height: 20,
              ),
              LoginOption(),
            ],
          ),
        ),
      ),
    );
  }
}
