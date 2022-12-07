import 'package:ecommerceapp/forget.dart';
import 'package:ecommerceapp/signin.dart';
import 'package:ecommerceapp/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'verification.dart';

Future<void> main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: SignUpView(),
    //  home: SignInView(),
  // home: ForgetView(),
  // home: VerificationViewState(),
  ));
}
