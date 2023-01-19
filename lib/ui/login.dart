// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cdcfinal/widgets/button.dart';

// class Login extends StatefulWidget {
//   const Login({Key? key}) : super(key: key);

//   @override
//   State<Login> createState() => _LoginState();
// }

// class _LoginState extends State<Login> {
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();

//   Future signIn() async {
//     await FirebaseAuth.instance.signInWithEmailAndPassword(
//         email: _emailController.text.trim(),
//         password: _passwordController.text.trim());
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _emailController.dispose();
//     _passwordController.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.grey[300],
//         body: SafeArea(
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text('Hello',
//                     style: TextStyle(
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                     )),
//                 SizedBox(
//                   height: 40,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Colors.grey[200],
//                       border: Border.all(color: Colors.white),
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 20.0),
//                       child: TextField(
//                         controller: _emailController,
//                         decoration: InputDecoration(
//                           border: InputBorder.none,
//                           hintText: 'Email',
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Colors.grey[200],
//                       border: Border.all(color: Colors.white),
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 20.0),
//                       child: TextField(
//                         obscureText: true,
//                         controller: _passwordController,
//                         decoration: InputDecoration(
//                           border: InputBorder.none,
//                           hintText: 'Password',
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 MyButton(label: "sign in ", onTap: signIn)
//               ],
//             ),
//           ),
//         ));
//   }
// }
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project/widgets/button.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => LoginState();
}

class LoginState extends State<Login> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future Login() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim());

    Navigator.of(context).pushNamed('/');
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  bool _obsecureText = true;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          //Image.asset('assets/images/logo.png'),
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: 'Username',
                      hintText: 'Username',
                      prefixIcon: Icon(Icons.person),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 3, color: Color.fromARGB(255, 212, 212, 80)),
                      ),
                      filled: true,
                      fillColor: Color.fromARGB(255, 195, 186, 186),
                    ),
                    onChanged: (String value) {},
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: _passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obsecureText = !_obsecureText;
                          });
                        },
                        child: Icon(_obsecureText
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 3, color: Color.fromARGB(255, 212, 212, 80)),
                      ),
                      filled: true,
                      fillColor: Color.fromARGB(255, 243, 236, 236),
                    ),
                    obscureText: _obsecureText,
                    onChanged: (String value) {},
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: Login,
                    style: ElevatedButton.styleFrom(
                      //<-- SEE HERE
                      backgroundColor: Color.fromARGB(255, 212, 212, 80),
                      side: BorderSide(
                        width: 3.0,
                        color: Color.fromARGB(255, 212, 212, 80),
                      ),
                    ),
                    child: Text('Login'),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      //<-- SEE HERE
                      side: BorderSide(width: 3.0),
                    ),
                    child: Text('Forgot your password?'),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
