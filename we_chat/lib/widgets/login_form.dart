// import 'package:flutter/material.dart';
// import 'package:we_chat/theme.dart';

// class LoginForm extends StatefulWidget {
//   const LoginForm({super.key});

//   @override
//   State<LoginForm> createState() => _LoginFormState();
// }

// class _LoginFormState extends State<LoginForm> {
//   bool  _isObscure = true;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         buildInputForm('Email', false),
//         buildInputForm('Password', true),
//       ],
//     );
//   }

//   Padding buildInputForm(String label, bool pass) {
//     return Padding(
//         padding: const EdgeInsets.symmetric(vertical: 5),
//         child: TextFormField(
//           obscureText: pass ? _isObscure : false,
//           decoration: InputDecoration(
//               labelText: label,
//               labelStyle: const TextStyle(color: kTextFieldColor),
//               focusedBorder: const UnderlineInputBorder(
//                 borderSide: BorderSide(color: kPrimaryColor),
//               ),
//               suffixIcon: pass ? IconButton(onPressed: () {
//                 setState(() {
//                   _isObscure = !_isObscure;
//                 });
//               }, 
//               icon: Icon(_isObscure ? Icons.visibility_off : Icons.visibility, color: kPrimaryColor),
//               )
//               : null),
//               ),
//         );
//   }
// }


import 'package:flutter/material.dart';
import 'package:we_chat/theme.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _isObscure = true;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildInputForm(
            controller: _emailController,
            label: 'Email',
            obscureText: false,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Veuillez entrer un email';
              }
              if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                return 'Veuillez entrer un email valide';
              }
              return null;
            },
          ),
          buildInputForm(
            controller: _passwordController,
            label: 'Password',
            obscureText: _isObscure,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Veuillez entrer un mot de passe';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }

  Padding buildInputForm({
    required TextEditingController controller,
    required String label,
    required bool obscureText,
    required String? Function(String?) validator,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: kTextFieldColor),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: kPrimaryColor),
          ),
          suffixIcon: obscureText
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                  icon: Icon(
                    _isObscure ? Icons.visibility_off : Icons.visibility,
                    color: kPrimaryColor,
                  ),
                )
              : null,
        ),
        validator: validator,
      ),
    );
  }
}
