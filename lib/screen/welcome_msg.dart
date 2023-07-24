import 'package:flutter/material.dart';
import 'package:test_logic/Theme/app_theme.dart';
import 'package:test_logic/screen/Auth/login.dart';

import 'Auth/register.dart';

class WelcomeMsg extends StatelessWidget {
  const WelcomeMsg({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SizedBox(
        //height: 200.0,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(10.0),
                  color: AppTheme.colors.color4,
                  child: Text(
                    'خصومات تصل إلى ٥٠٪ هذا الشهر فقط ...',
                    style: Theme.of(context).textTheme.headlineSmall,
                  )),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'يمكنك الاشتراك معنا والحصول على خصومات جديدة',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 10.0),
                        child: OutlinedButton(
                          child: const Text('تسجيل حساب جديد'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterPage()),
                            );
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                            );
                          },
                          child: const Text('تسجيل الدخول')),
                    ),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
