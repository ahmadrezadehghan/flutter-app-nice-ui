// ignore_for_file: unused_field
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../theme/color.dart';
import 'root_app.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  String? _username;
  String? _password;
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();
  final nameController = TextEditingController();
  bool isLoading = true;
  late TabController tabController;

  @override
  void dispose() {
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text(
                      'Experimental App',
                      maxLines: 1,
                      style: TextStyle(
                        color: g,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  const Center(
                    child: Text(
                      'Welcome',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  const Center(
                    child: Text(
                      'Login or Register to continue',
                      style: TextStyle(
                          color: Color.fromARGB(255, 127, 125, 125),
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  const SizedBox(height: 30),
                  TabBar(
                    controller: tabController,
                    tabs: [
                      Tab(
                        text: 'Login',
                      ),
                      Tab(
                        text: 'Register',
                      ),
                    ],
                    labelColor: Colors.black,
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: tabController,
                      children: [
//++++++++++++++++++++++++++Attention+++++++++++++++++++++++++++++++++++++++++++++Attention+++++++++++++++++++

                        //Login tab is here...
                        Column(
                          children: [
                            Textfield_custom(
                              Controller_: emailController,
                              Icon_: Icons.email,
                              TextInputType_: TextInputType.emailAddress,
                              errornote_: 'Email format is wrong!',
                              fontsize_: 17,
                              hinttext_: 'enter your Email',
                              star_: true,
                              text_: 'Email',
                            ),
                            Textfield_custom(
                              Controller_: passwordController,
                              Icon_: Icons.remove_red_eye,
                              TextInputType_: TextInputType.text,
                              errornote_:
                                  'Passwords format is wrong!,must be 8 characters or more.',
                              fontsize_: 17,
                              hinttext_: 'enter your Password',
                              star_: true,
                              text_: 'Password',
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: MaterialButton(
                                minWidth: double.infinity,
                                height: 60,
                                color: g,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                onPressed: () {
                                  if (_formKey.currentState!.validate() ==
                                      true) {
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                RootApp()));
                                  }
                                },
                                child: const Text(
                                  'Log in',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  " forget your password..? ",
                                  style: TextStyle(fontSize: 14),
                                ),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              tabController.animateTo(
                                                  (tabController.index = 0));
                                            },
                                          text: 'click here',
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.underline,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .secondary,
                                              fontSize: 15))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Dont have an account..? ",
                                  style: TextStyle(fontSize: 16),
                                ),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              tabController.animateTo(
                                                  (tabController.index = 1));
                                            },
                                          text: 'Register',
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.underline,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .secondary,
                                              fontSize: 17))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
//++++++++++++++++++++++++++Attention+++++++++++++++++++++++++++++++++++++++++++++Attention+++++++++++++++++++

                        //Register tab is here...
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              Textfield_custom(
                                Controller_: emailController,
                                Icon_: Icons.email,
                                TextInputType_: TextInputType.emailAddress,
                                errornote_: 'Email format is wrong!',
                                fontsize_: 17,
                                hinttext_: 'enter your Email',
                                star_: true,
                                text_: 'Email',
                              ),
                              Textfield_custom(
                                Controller_: phoneController,
                                Icon_: Icons.phone,
                                TextInputType_: TextInputType.number,
                                errornote_: 'phone numbers format is wrong!',
                                fontsize_: 17,
                                hinttext_: 'enter your phone number',
                                star_: false,
                                text_: 'Phone number',
                              ),
                              Textfield_custom(
                                Controller_: nameController,
                                Icon_: Icons.person,
                                TextInputType_: TextInputType.text,
                                errornote_: 'enter your Name!',
                                fontsize_: 17,
                                hinttext_: 'enter your Name',
                                star_: true,
                                text_: 'Name',
                              ),
                              Textfield_custom(
                                Controller_: passwordController,
                                Icon_: Icons.remove_red_eye,
                                TextInputType_: TextInputType.text,
                                errornote_:
                                    'Passwords format is wrong!,must be 8 characters or more.',
                                fontsize_: 17,
                                hinttext_: 'enter your Password',
                                star_: true,
                                text_: 'Password',
                              ),
                              Textfield_custom(
                                Controller_: confirmpasswordController,
                                Icon_: Icons.remove_red_eye,
                                TextInputType_: TextInputType.text,
                                errornote_: 'Passwords do not match!',
                                fontsize_: 17,
                                hinttext_: 'Write the same Password',
                                star_: true,
                                text_: 'Confirm Password',
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: MaterialButton(
                                  minWidth: double.infinity,
                                  height: 60,
                                  color: g,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  onPressed: () {
                                    if (_formKey.currentState!.validate() ==
                                        true) {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  RootApp()));
                                    }
                                  },
                                  child: const Text(
                                    'Register',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    " have an account..? ",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                tabController.animateTo(
                                                    (tabController.index = 0));
                                              },
                                            text: 'Login',
                                            style: TextStyle(
                                                decoration:
                                                    TextDecoration.underline,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .secondary,
                                                fontSize: 17))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future signUp() async {}
}

//class for not using textfield every time..
class Textfield_custom extends StatelessWidget {
  final TextEditingController Controller_;
  final String text_;
  final IconData Icon_;
  final String hinttext_;
  final String errornote_;
  final TextInputType TextInputType_;
  final double fontsize_;
  final bool star_;
  const Textfield_custom(
      {Key? key,
      required this.Controller_,
      required this.text_,
      required this.Icon_,
      required this.hinttext_,
      required this.errornote_,
      required this.TextInputType_,
      required this.fontsize_,
      required this.star_})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width * 0.8,
        child: TextFormField(
          controller: Controller_,
          textInputAction: TextInputAction.next,
          cursorColor: Colors.blue,
          keyboardType: TextInputType_,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) {
            if (value!.isEmpty) {
              return errornote_;
            }
          },
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.blue, width: 2)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Color.fromARGB(254, 57, 40, 71)),
            ),
            label: Row(children: [
              Text(
                text_,
                style: TextStyle(
                    color: Color.fromARGB(254, 57, 40, 71),
                    fontSize: fontsize_),
              ),
              star_ == true
                  ? Text(
                      ' *',
                      style: TextStyle(color: Colors.red, fontSize: fontsize_),
                    )
                  : Text(
                      '',
                      style: TextStyle(fontSize: fontsize_),
                    ),
            ]),
            prefixIcon: Icon(Icon_),
            hintText: hinttext_,
            hintStyle: TextStyle(
                color: Color.fromARGB(255, 158, 156, 156), fontSize: fontsize_),
          ),
        ),
      ),
    );
  }
}
