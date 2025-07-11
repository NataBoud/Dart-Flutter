import 'package:flutter/material.dart';
import 'package:menu_app/screens/menu_screen.dart';
import 'package:menu_app/utils/colors.dart';
import 'package:menu_app/widgets/main_logo.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.yellowBackground,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Flexible(
            fit: FlexFit.loose,
            child: MainLogo()
            ),
            Expanded(
                child:
                Column(
                  children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: const Text(
                                    'MENU',
                                    style: TextStyle(
                                    fontSize: 80,
                                    fontFamily: 'Times New Roman',
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primaryText
                                  )
                                ),
                  ),
            const Text(
              'RESTAURANT',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black87
              )
            ),
            const SizedBox(height: 10),
            const Text(
              'Let us help you discover the\nbest food',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87
              )
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryButton,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(30)
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MenuScreen())
                    );
                  }, 
                  child: const Text("Get Started", style: TextStyle(fontSize: 18, color: Colors.white),)),
              ) 
            )
                  ],)
            )

          ]
        ) 
    );
  }
}