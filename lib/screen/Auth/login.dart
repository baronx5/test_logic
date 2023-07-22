import 'package:flutter/material.dart';
import 'package:test_logic/components/text_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('السوق العربي'), leading: const Icon(Icons.arrow_back),),
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
                        Icons.lock,
                        size: 100.0,
                      ),
                    ),
                    const SizedBox(height: 40.0,),
                    Text(
                      'تسجيل الدخول لحسابك الخاص',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    MyTextField(
                        controller: emailTextController,
                        hintText: 'ادخل بريدك الالكتروني',
                        obscureText: false),
                    const SizedBox(
                      height: 10.0,
                    ),
                    MyTextField(
                        controller: passwordTextController,
                        hintText: 'ادخل الرقم السري',
                        obscureText: true),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50.0,
                      child: ElevatedButton(
                          onPressed: () {}, child:  Text('تسجيل الدخول', style: Theme.of(context).textTheme.headlineMedium,)),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,                      children: [
                        Text('لاتملك حساب ؟'),
                        Text('سجل معنا الأن', style: TextStyle(color: Colors.blue),),
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
