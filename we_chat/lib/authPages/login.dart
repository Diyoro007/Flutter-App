// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:we_chat/authPages/sign.dart';
import 'package:we_chat/theme.dart';
import 'package:we_chat/widgets/login_form.dart';
import 'package:we_chat/widgets/login_option.dart';
import 'package:we_chat/widgets/primary_button.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: kDefaultPadding,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 120,
            ),
            Text(
              "Se connecter",
              style: titleText,
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  "Nouveau sur l'app ?",
                  style: subTitle,
                ),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                  },
                  child: Text(
                    "S'inscrire",
                    style: textButton.copyWith(
                        decoration: TextDecoration.underline,
                        decorationThickness: 1),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const LoginForm(),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Mot de passe oublié ?',
              style: TextStyle(
                color: kZambeziColor,
                fontSize: 14,
                decoration: TextDecoration.underline,
                decorationThickness: 1,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            PrimaryButton(
              buttonText: 'Se connecter',
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Ou connectez vous avec :',
              style: subTitle.copyWith(color: kBlackColor),
            ),
            SizedBox(height: 20,),
            LoginOption(),
          ],
        ),
      ),
    ));
  }
}
