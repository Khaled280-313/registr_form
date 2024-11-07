import 'package:flutter/material.dart';

class RegistrForm extends StatefulWidget {
  const RegistrForm({super.key});

  @override
  State<RegistrForm> createState() => _RegistrFormState();
}

class _RegistrFormState extends State<RegistrForm> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>(); //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 244, 244),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            const SizedBox(
              height: 70,
            ),
            const Text(
              "Welcome Back to",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const Text(
              "our grocery shop",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 20),
              width: 200,
              height: 510,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 3, color: Colors.grey, offset: Offset(1, 1))
                  ]),
              child: Form(
                  key: formKey,
                  child: Column(children: [
                    Container(
                      alignment: Alignment.bottomLeft,
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      child: const Text(
                        "Phone Number",
                        style: TextStyle(
                            color: Color.fromARGB(95, 0, 0, 0), fontSize: 17),
                      ),
                    ),
                    const CustomTextFormFiled(
                        textHint: "Enter your phone number"),
                    const SizedBox(height: 30),
                    Container(
                      alignment: Alignment.bottomLeft,
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      child: const Text(
                        "Password",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Color.fromARGB(95, 0, 0, 0), fontSize: 17),
                      ),
                    ),
                    const CustomTextFormFiled(
                      textHint: "Enter your password",
                      isPassword: true,
                      obscureText: true,
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      margin: const EdgeInsets.symmetric(vertical: 6),
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forgot Password?",
                            style: TextStyle(
                                color: Color.fromARGB(255, 21, 186, 38),
                                fontSize: 15),
                          )),
                    ),
                    Row(
                      children: [
                        const Text("Log In",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            )),
                        const Spacer(),
                        Container(
                          width: 90,
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 21, 186, 38),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 3,
                                  color: Colors.grey,
                                  offset: Offset(1, 1))
                            ],
                          ),
                          child: MaterialButton(
                              onPressed: () {},
                              child: const Icon(Icons.arrow_forward,
                                  color: Colors.white, size: 33)),
                        )
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 50),
                      child: const Row(children: [
                        Text(
                          "Don't Have Account?",
                          style: TextStyle(
                              color: Color.fromARGB(95, 0, 0, 0), fontSize: 15),
                        ),
                        Text(" Sign Up",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 21, 186, 38)))
                      ]),
                    )
                  ])),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTextFormFiled extends StatefulWidget {
  final String? textHint;
  final bool? isPassword;
  final bool? obscureText;

  const CustomTextFormFiled({
    super.key,
    required this.textHint,
    this.isPassword,
    this.obscureText,
  });

  @override
  State<CustomTextFormFiled> createState() => _CustomTextFormFiledState();
}

class _CustomTextFormFiledState extends State<CustomTextFormFiled> {
  bool statu = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        decoration: InputDecoration(
            hintText: widget.textHint,
            hintStyle: const TextStyle(color: Color.fromARGB(95, 0, 0, 0)),
            enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(7)),
                borderSide:
                    BorderSide(color: Color.fromARGB(95, 0, 0, 0), width: 2)),
            focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(7)),
                borderSide:
                    BorderSide(color: Color.fromARGB(95, 0, 0, 0), width: 2)),
            suffixIcon: widget.isPassword == true
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        statu = !statu;
                      });
                    },
                    icon: const Icon(Icons.remove_red_eye))
                : null),
        obscureText: widget.obscureText == true ? true : false,
      ),
    );
  }
}
