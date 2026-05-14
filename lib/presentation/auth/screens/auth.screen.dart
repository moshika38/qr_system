import 'package:flutter/material.dart';
import 'package:qr_student_system/core/utils/color.dart';
import 'package:qr_student_system/presentation/auth/widgets/role.selector.dart';
import 'package:qr_student_system/shared/app.button.dart';
import 'package:qr_student_system/shared/app.input.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool show = true;
  bool isAdmin = true;
  bool terms = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: size.width * 0.6,
          height: size.height * 0.9,
          child: Card(
            elevation: 5,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    child: Stack(
                      children: [
                        Container(
                          width: 250,
                          height: 250,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(100),
                              bottomRight: Radius.circular(100),

                              topRight: Radius.circular(100),
                            ),
                          ),
                        ),
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: size.width * 0.25,
                                height: size.height * 0.50,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    'assets/img/login.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),

                              SizedBox(height: 5),

                              Text(
                                "EduAttend",
                                style: Theme.of(context).textTheme.bodyLarge!
                                    .copyWith(
                                      color: Colors.white,
                                      fontSize: 33,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "The next generation of academic management. ",
                                style: Theme.of(context).textTheme.bodySmall!
                                    .copyWith(color: Colors.white),
                              ),
                              Text(
                                "Secure, efficient, and powered by QR technology",
                                style: Theme.of(context).textTheme.bodySmall!
                                    .copyWith(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: AppColors.pureWhite,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Welcome Back',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Please enter your credentials to access the management portal',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),

                            SizedBox(height: 20),

                            RoleSelector(
                              isAdmin: isAdmin,
                              onAdminSelected: () {
                                setState(() {
                                  isAdmin = true;
                                });
                              },
                              onStudentSelected: () {
                                setState(() {
                                  isAdmin = false;
                                });
                              },
                            ),
                            SizedBox(height: 20),

                            AppInput(
                              isPasswordEnter: false,
                              controller: usernameController,
                              prefixIcon: Icons.email,
                              hintText: 'JoneDoe@gmail.com',
                              labelText: 'Email Address',
                            ),
                            SizedBox(height: 12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Forgot Password?',
                                  style: Theme.of(context).textTheme.bodySmall!
                                      .copyWith(
                                        color: AppColors.primaryColor,
                                        fontWeight: FontWeight.w500,
                                        decoration: TextDecoration.underline,
                                        fontSize: 13,
                                      ),
                                ),
                              ],
                            ),

                            AppInput(
                              isPasswordEnter: show,
                              labelText: 'Password',
                              controller: passwordController,
                              hintText: "*******",
                              prefixIcon: Icons.lock,
                              suffixIcon: Icons.visibility,
                              clickSuffixIcon: () {
                                setState(() {
                                  show = !show;
                                });
                              },
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Checkbox(
                                  fillColor: MaterialStateProperty.all(AppColors.primaryColor),
                                
                                  value: terms,
                                  onChanged: (value) {
                                    setState(() {
                                      terms = !terms;
                                    });
                                  },
                                ),
                                Text(
                                  'Agree with T&C',
                                  style: Theme.of(context).textTheme.bodySmall!
                                      .copyWith(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13,
                                      ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            AppButton(text: "Sing in"),
                            SizedBox(height: 20),

                            Container(
                              width: double.infinity,
                              height: 1,
                              color: Colors.grey.withOpacity(0.5),
                            ),
                            SizedBox(height: 20),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Don't have an account?",
                                  style: Theme.of(context).textTheme.bodySmall!
                                      .copyWith(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13,
                                      ),
                                ),

                                Card(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 5,
                                    ),
                                    child: Text(
                                      "Request Access",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                            color: AppColors.primaryColor,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 40),

                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 50,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Privacy Policy",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 11,
                                        ),
                                  ),
                                  Text(
                                    "Terms of Service",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 11,
                                        ),
                                  ),
                                  Text(
                                    "Help Center",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 11,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
