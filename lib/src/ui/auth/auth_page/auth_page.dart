import 'package:flutter/material.dart';
import 'package:sehat_clinic/src/ui/auth/login/login_screen.dart';
import 'package:sehat_clinic/src/ui/auth/register/register_screen.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {

  // initially show login page
  bool showLoginPage = true;
  // toggle between login and register page
  void togglePages(){
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(showLoginPage){
      return LoginScreen(onTap: togglePages);
    }else{
      return RegisterScreen(
        onTap: togglePages,
      );
    }
  }
}
