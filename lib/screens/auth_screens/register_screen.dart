import 'package:fashion_clothing/screens/auth_screens/login_screen.dart';
import 'package:fashion_clothing/screens/home_screen.dart';
import 'package:fashion_clothing/utils/colors/colors.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isHidden = true;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(left: 30, right: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text("Create Account",
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.w500)),
                const Text(
                  "Fill your information below or register with your social account",
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(color: MyColors.secondaryColor, fontSize: 15),
                ),
                const SizedBox(height: 15),
                const SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Name",
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.start,
                  ),
                ),
                const SizedBox(height: 10),
                const TextField(
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                    hintText: "Sahil Khimani",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      borderSide: BorderSide(color: MyColors.borderColor),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                const SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Email",
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.start,
                  ),
                ),
                const SizedBox(height: 10),
                const TextField(
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                    hintText: "example@gmail.com",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      borderSide: BorderSide(color: MyColors.borderColor),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                const SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Password",
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.start,
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  obscureText: isHidden,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 15),
                    suffix: InkWell(
                      onTap: () {
                        setState(() {
                          isHidden = !isHidden;
                        });
                      },
                      child: Icon(
                          isHidden ? Icons.visibility : Icons.visibility_off),
                    ),
                    hintText: "********",
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      borderSide: BorderSide(
                        color: MyColors.borderColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Checkbox(
                        value: isChecked,
                        checkColor: Colors.white,
                        fillColor: MaterialStateColor.resolveWith((states) {
                          if (!states.contains(MaterialState.selected)) {
                            return Colors.transparent;
                          }
                          return MyColors.primaryColor;
                        }),
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        }),
                    const Text(
                      "Agree with",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Terms and Conditions",
                          style: TextStyle(
                              color: MyColors.primaryColor,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline),
                        ))
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(331, 56),
                        backgroundColor: MyColors.primaryColor,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    child: const Text(
                      "Sign Up",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    )),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    Expanded(child: Divider()),
                    Text(
                      " Or Sign up With ",
                      style: TextStyle(
                        color: MyColors.secondaryColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    Expanded(child: Divider()),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: MyColors.borderColor)),
                      child: IconButton(
                        icon: Image.asset(
                          'assets/images/apple.png',
                          height: 40,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: MyColors.borderColor)),
                      child: IconButton(
                        icon: Image.asset(
                          'assets/images/google.png',
                          height: 30,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: MyColors.borderColor)),
                      child: IconButton(
                        icon: Image.asset(
                          'assets/images/facebook.png',
                          height: 30,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account?",
                      style: TextStyle(color: Colors.black, fontSize: 13),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const LoginScreen()));
                        },
                        child: const Text(
                          "Sign In",
                          style: TextStyle(
                              color: MyColors.primaryColor,
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
