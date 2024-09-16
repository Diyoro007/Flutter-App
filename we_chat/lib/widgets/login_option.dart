// import 'package:flutter/material.dart';

// class LoginOption extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         BuildButton(
//           iconImage: Image(
//             height: 20,
//             width: 20,
//             image: AssetImage('assets/images/facebook.png'),
//           ),
//           textButton: 'Facebook',
//         ),
//         BuildButton(
//           iconImage: Image(
//             height: 20,
//             width: 20,
//             image: AssetImage('assets/images/google.png'),
//           ),
//           textButton: 'Google',
//         ),
//       ],
//     );
//   }
// }

// class BuildButton extends StatelessWidget {
//   final Image iconImage;
//   final String textButton;
//   BuildButton({required this.iconImage, required this.textButton});
//   @override
//   Widget build(BuildContext context) {
//     var mediaQuery = MediaQuery.of(context).size;
//     return Container(
//         height: mediaQuery.height * 0.06,
//         width: mediaQuery.height * 0.36,
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             border: Border.all(color: Colors.grey)),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [iconImage, SizedBox(width: 5), Text(textButton)],
//         ));
//   }
// }


import 'package:flutter/material.dart';

class LoginOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BuildButton(
          iconImage: AssetImage('assets/images/facebook.png'),
          textButton: 'Facebook',
        ),
        BuildButton(
          iconImage: AssetImage('assets/images/google.png'),
          textButton: 'Google',
        ),
      ],
    );
  }
}

class BuildButton extends StatelessWidget {
  final ImageProvider iconImage;
  final String textButton;

  BuildButton({required this.iconImage, required this.textButton});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Container(
      height: mediaQuery.height * 0.06,
      width: mediaQuery.width * 0.36, // Utilisation de la largeur pour plus de cohérence
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: iconImage,
            height: 20,
            width: 20,
          ),
          SizedBox(width: 8), // Espacement amélioré
          Text(
            textButton,
            style: TextStyle(
              fontSize: 16, // Ajustement du style du texte
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
