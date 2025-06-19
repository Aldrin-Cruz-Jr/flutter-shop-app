import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/views/screens/authenticaiton_screens/login_screen.dart';

class SignupScreen extends StatelessWidget {
  //const SignupScreen({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); //the underscore in formKey means that it makes it private, cant refer outside of register class
  //doing this FormState makes us know the situation of the form
  
  @override
  Widget build(BuildContext context) {
    return Scaffold( //we use Scaffold because it just us access to predefined components such as body, appbar,  drawer etc. - basically gives the screen a standard layout
      backgroundColor: Colors.white,
        body:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: SingleChildScrollView(
              child: Form( //we bind this to our textfields
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, //vertical alignment center
                  children: [
                    Text(
                      "Sign Up",
                      style: GoogleFonts.getFont(
                        'Lato',
                        color: Color.fromARGB(255, 7, 57, 57),
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.2,
                        fontSize: 50,  
                      ),),
                    Image.asset(
                      'assets/images/Illustration.png',
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
                        ),
                      ),
                    ), 
                    TextFormField(
                      validator: (value) {
                        if(value! .isEmpty){
                          return "Fill out email field";
                        }else {
                          null;
                        }
                      },
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9)
                        ),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        labelText: 'Enter your email',
                        labelStyle: GoogleFonts.getFont(
                          "Nunito Sans",
                          fontSize: 14,
                          letterSpacing: 0.1,
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/icons/email.png',
                            height: 20,
                            width: 20,),
                        ),
                      ),
                    ), 
                
                    SizedBox(
                      height: 20,
                    ),
                
                    Align(
                      alignment: Alignment.topLeft, //
                      child: Text(
                        "Full name", 
                        style: GoogleFonts.getFont(
                          'Nunito Sans', 
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.2
                        ),)
                      ),
                      TextFormField(
                        validator: (value) {
                        if(value! .isEmpty){
                          return "Fill out full name field";
                        }else {
                          null;
                        }
                      },
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                          ),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          labelText: 'Enter your full name',
                          labelStyle: GoogleFonts.getFont(
                            "Nunito Sans",
                            fontSize: 14,
                            letterSpacing: 0.1,
                          ),
                
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                              'assets/icons/user.jpeg',
                              width: 20,
                              height: 20,),
                          ),
                        ),
                      ),
                
                      //then we add a SizedBox if we want to add some space in between
                      SizedBox(
                        height:20,
                      ),
                      Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Password", 
                        style: GoogleFonts.getFont(
                          'Nunito Sans', 
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.2
                        ),)
                      ),
                       TextFormField(
                        validator: (value) {
                        if(value! .isEmpty){
                          return "Fill out password field";
                        }else {
                          null;
                        }
                      },
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                          ),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          labelText: 'Enter your password',
                          labelStyle: GoogleFonts.getFont(
                            "Nunito Sans",
                            fontSize: 14,
                            letterSpacing: 0.1,
                          ),
                
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                              'assets/icons/password.png',
                              width: 20,
                              height: 20,),
                          ),
                          suffixIcon: Icon(Icons.visibility),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 319,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF102DE1),
                              Color(0xCC0D6EFF)
                            ] )
                        ),
                        child: Center(
                          child: InkWell(
                            onTap: (){
                              if(_formKey.currentState!.validate()){ //if this is not empty
                                Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  print('login success');
                                  return LoginScreen();
                                })
                              );
                              } else {
                                print("failed");
                              }
                              
                            },
                            child: Text(
                              'Sign Up',
                              style: GoogleFonts.getFont(
                                'Lato',
                                fontSize:17,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(decoration: BoxDecoration(),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,//because we are in row, it will move it to the center horizontally
                        children: [
                          Text("Already have an account?", 
                          style: GoogleFonts.roboto(fontWeight:FontWeight.w500,
                          letterSpacing: 1 )), 
                          InkWell(
                            onTap: (){
                              Navigator.push(context, 
                              MaterialPageRoute(builder: (context) {
                                return LoginScreen();
                              }));  
                            },
                            child: Text("Sign In", 
                            style: GoogleFonts.roboto(fontWeight: FontWeight.bold,
                            color: Color(0xFF102DE1)),),
                          )],)
                  ],
                ),
              ),
            ) //using column can take more widgets because of its property 'children'
           
          ),
        ), 

    );
  }
}