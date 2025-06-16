import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( //we use Scaffold because it just us access to predefined components such as body, appbar,  drawer etc. - basically gives the screen a standard layout
        body:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, //vertical alignment center
              children: [
                Text(
                  "Login",
                  style: GoogleFonts.getFont(
                    'Lato',
                    color: Color.fromARGB(255, 7, 57, 57),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.2,
                    fontSize: 50,  
                  ),),
                Image.asset(
                  'assets/images/store.png',
                  width:200,
                  height:200,
                ),  
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Email", 
                    style: GoogleFonts.getFont(
                      'Nunito Sans', 
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.2
                    ),)
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9),
                      ),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                    ),
                  )
              ],
            ) //using column can take more widgets because of its property 'children'
           
          ),
        ), 

    );
  }
}