import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'components/my_buttons.dart';
import 'constant.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  var userInput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                     Align(
                       alignment: Alignment.bottomRight,
                         child: Text(userInput.toString(), style: TextStyle(fontSize: 30, color: Colors.white),)),
                      SizedBox(height: 20,),
                      Text(answer.toString(), style: TextStyle(fontSize: 30, color: Colors.white),)

                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        MYButton(title: 'AC', onPress: () {
                        userInput = '' ;
                        answer = '' ;
                        setState(() {

                        });
                        }),
                        MYButton(title: '+/-',onPress: () {
                          userInput += '+/-';
                          setState(() {

                          });
                        }),
                        MYButton(title: '%',onPress: () {
                          userInput += '%';
                          setState(() {

                          });
                        }),
                        MYButton(title: '/', color: Color(0xffffa00a),onPress: () {
                          userInput += '/';
                          setState(() {

                          });
                        }),
                      ],
                    ),
                    Row(
                      children: [
                        MYButton(title: '7', onPress: () {
                        userInput += '7';
                        setState(() {

                        });
                        }),
                        MYButton(title: '8',onPress: () {
                          userInput += '8';
                          setState(() {

                          });
                        }),
                        MYButton(title: '0',onPress: () {
                          userInput += '0';
                          setState(() {

                          });
                        }),
                        MYButton(title: 'x', color: Color(0xffffa00a),onPress: () {
                          userInput += 'x';
                          setState(() {

                          });
                        }),
                      ],
                    ),
                    Row(
                      children: [
                        MYButton(title: '4', onPress: () {
                          userInput += '4';
                          setState(() {

                          });
                        }),
                        MYButton(title: '5',onPress: () {
                          userInput += '5';
                          setState(() {

                          });
                        }),
                        MYButton(title: '6',onPress: () {
                          userInput += '6';
                          setState(() {

                          });
                        }),
                        MYButton(title: '-', color: Color(0xffffa00a),onPress: () {
                          userInput += '-';
                          setState(() {

                          });
                        }),
                      ],
                    ),
                    Row(
                      children: [
                        MYButton(title: '1', onPress: () {
                          userInput += '1';
                          setState(() {

                          });
                        }),
                        MYButton(title: '2',onPress: () {
                          userInput += '2';
                          setState(() {

                          });
                        }),
                        MYButton(title: '3',onPress: () {
                          userInput += '3';
                          setState(() {

                          });
                        }),
                        MYButton(title: '+', color: Color(0xffffa00a),onPress: () {
                          userInput += '+';
                          setState(() {

                          });
                        }),
                      ],
                    ),
                    Row(
                      children: [
                        MYButton(title: '0', onPress: () {
                          userInput += '0';
                          setState(() {

                          });
                        }),
                        MYButton(title: '.',onPress: () {
                          userInput += '.';
                          setState(() {

                          });
                        }),
                        MYButton(title: 'DEL',onPress: () {
                          userInput = userInput.substring(0, userInput.length - 1);
                          setState(() {

                          });
                        }),
                        MYButton(title: '=', color: Color(0xffffa00a),onPress: () {
                       equalPress() ;
                          setState(() {

                          });
                        }),
                      ],
                    ),
                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }


  void equalPress() {

    String finaluserInput = userInput;

    finaluserInput= userInput.replaceAll('x', '*');

     Parser p = Parser();
     Expression expression = p.parse(finaluserInput);
     ContextModel  contextModel = ContextModel();
     double eval = expression.evaluate(EvaluationType.REAL, contextModel);
     answer = eval.toString();

  }
}











//signup and login field practice

// return SafeArea(
// child: Scaffold(
// body: Column(
// children: [
// MYButton(title: 'Login',),
// MYButton(title: 'Signup',),
//
//
// ],
// ),
// ),
// );
// }
// }
//
//
//
//
//
//
//
// class MYButton extends StatelessWidget {
//   final String title ;
//   const MYButton({Key? key , required this.title}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 20),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 30),
//         child: Container(
//           height: 50,
//           child: Center(child: Text(title, style: TextStyle(color: whiteColor, fontSize: 20),)),
//           decoration: BoxDecoration(
//             color: Colors.pink,
//             borderRadius: BorderRadius.circular(20),
//           ),
//         ),
//       ),
//     );
//   }
// }
