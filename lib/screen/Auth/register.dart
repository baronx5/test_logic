import 'package:flutter/material.dart';
import 'package:test_logic/components/text_field.dart';


class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('السوق العربي'),
        leading: const Icon(Icons.arrow_back),
      ),
      body: SafeArea(
        child: Center(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(25),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black12),
                      ),
                      child: const Icon(
                        Icons.person,
                        size: 100.0,
                      ),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    Text(
                      'تسجيل حساب جديد',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    MyTextField(
                      controller: emailTextController,
                      hintText: 'ادخل بريدك الالكتروني',
                      obscureText: false,
                      prefixIcon: const Icon(Icons.email),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    MyTextField(
                      controller: passwordTextController,
                      hintText: 'ادخل الرقم السري',
                      obscureText: true,
                      prefixIcon: const Icon(Icons.key),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50.0,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            ' تسجيل حساب جديد',
                            style: Theme.of(context).textTheme.headlineMedium,
                          )),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('لديك حساب ؟'),
                        Text(
                          '  سجل دخولك الآن',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
