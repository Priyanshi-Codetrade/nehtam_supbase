import 'package:flutter/material.dart';

import '../../../core/widget/app_elevated_button.dart';
import '../../../core/widget/outline_text_form_field.dart';
import '../../../utils/constant/color_constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final ValueNotifier obscurePasswordValue = ValueNotifier(true);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        //  bottom: const AppbarDivider(),
        backgroundColor: Colors.white70,
        title: const Padding(
          padding: EdgeInsets.only(left: 12),
          child: Text(
            "LOGIN",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        /*  actions: [
          Padding(
            padding: const EdgeInsets.only(right: 26),
            child: IconButton(
              onPressed: () => {
                /*  widget.cameFromLogout
                      ? context.pushNamedAndRemoveUntil(
                          RoutesConstants.routeDashboard)
                      : context.pop() */
              },
              icon: const Icon(
                Icons.close,
                size: 18,
                color: ColorConstants.primaryColor,
              ),
            ),
          )
        ], */
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 10),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      OutlinedTextFormField(
                        richText: 'Email Address',
                        controller: emailController,
                        textInputAction: TextInputAction.next,
                        hintText: "Email Address",
                        hintStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.withOpacity(0.8),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      ValueListenableBuilder(
                        valueListenable: obscurePasswordValue,
                        builder: (context, value, child) =>
                            OutlinedTextFormField(
                          showPass: obscurePasswordValue.value,
                          richText: 'Password',
                          controller: passwordController,
                          textInputAction: TextInputAction.next,
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.withOpacity(0.9),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      AppElevatedButton("LOGIN", onPressed: () {
                        if (!_formKey.currentState!.validate()) return;
                      }),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: const Text(
                              "Forgot Password?",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: ColorConstants.primaryColor,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: const Text(
                              "Create Account",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: ColorConstants.primaryColor,
                              ),
                            ),
                          )
                        ],
                      )
                    ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
