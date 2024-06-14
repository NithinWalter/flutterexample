import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:nithinflutter/widgets/YellowBlackB.dart";

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // WidgetsBinding.instance.addPostFrameCallback(
    //   (timeStamp) async {
    //     // await Future.delayed(Duration(seconds: 2));
    //     _displayBottomSheet(context);
    //   },
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.maxFinite,
                child: Image.asset(
                  "assets/placeholder.png",
                  fit: BoxFit.contain,
                ),
              ),
              // ElevatedButton(
              //   child: Text(
              //     "SIGN IN",
              //     style: TextStyle(
              //         color: Colors.black,
              //         fontWeight: FontWeight.w600,
              //         fontSize: 16),
              //   ),
              //
              //   style: ElevatedButton.styleFrom(
              //     backgroundColor: Colors.transparent,
              //     shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(30)),
              //   ),
              //   onPressed: () {
              //     _displayBottomSheet(context);
              //   },
              // )
            ],
          ),
          Column(
            children: [
              Spacer(),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                height: 400,
                child: Form(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Sign In",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                  // Navigator.pop(context);
                                },
                                child: SvgPicture.asset("assets/x.svg"),
                              )
                            ],
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            controller: _usernameController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: "Enter email",
                              labelText: "Email",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(32)),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            controller: _passwordController,
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: "Enter password",
                              labelText: "Password",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(32)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Forgot Password?",
                            style: TextStyle(
                              color: Colors.orange,
                            ),
                          ),
                          SizedBox(height: 30),
                          signinwidget(
                            title: "SIGN IN",
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Future _displayBottomSheet(BuildContext context) {
  //   return showModalBottomSheet(
  //     elevation: 0,
  //       backgroundColor: Colors.transparent,
  //       context: context,
  //       isDismissible: false,
  //       builder: (context) {
  //         return Container(
  //           height: 400,
  //           child: Form(
  //             child: Card(
  //               child: Padding(
  //                 padding: const EdgeInsets.all(16.0),
  //                 child: Column(
  //                   children: [
  //                     SizedBox(height: 20),
  //                     Row(
  //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                       children: [
  //                         Text(
  //                           "Sign In",
  //                           style: TextStyle(
  //                             fontSize: 20,
  //                             fontWeight: FontWeight.w600,
  //                           ),
  //                           textAlign: TextAlign.left,
  //                         ),
  //                         GestureDetector(
  //                           onTap: () {
  //                             Navigator.pop(context);
  //                             Navigator.pop(context);
  //                           },
  //                           child: SvgPicture.asset("assets/x.svg"),
  //                         )
  //                       ],
  //                     ),
  //                     SizedBox(height: 20),
  //                     TextFormField(
  //                       controller: _usernameController,
  //                       keyboardType: TextInputType.emailAddress,
  //                       decoration: InputDecoration(
  //                         hintText: "Enter email",
  //                         labelText: "Email",
  //                         border: OutlineInputBorder(
  //                             borderRadius: BorderRadius.circular(32)),
  //                       ),
  //                     ),
  //                     SizedBox(
  //                       height: 20,
  //                     ),
  //                     TextFormField(
  //                       controller: _passwordController,
  //                       keyboardType: TextInputType.text,
  //                       obscureText: true,
  //                       decoration: InputDecoration(
  //                         hintText: "Enter password",
  //                         labelText: "Password",
  //                         border: OutlineInputBorder(
  //                             borderRadius: BorderRadius.circular(32)),
  //                       ),
  //                     ),
  //                     SizedBox(
  //                       height: 10,
  //                     ),
  //                     Text(
  //                       "Forgot Password?",
  //                       style: TextStyle(
  //                         color: Colors.orange,
  //                       ),
  //                     ),
  //                     SizedBox(height: 30),
  //                     signinwidget(
  //                       title: "SIGN IN",
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             ),
  //           ),
  //         );
  //       });
  // }
}
