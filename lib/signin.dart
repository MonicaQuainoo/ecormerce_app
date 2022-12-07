import 'package:ecommerceapp/auth.dart';
import 'package:flutter/material.dart';

class SignInView extends StatefulWidget {
  const SignInView({ Key? key }) : super(key: key);

  @override
  State<SignInView> createState() => _SignInViewState();
}

bool isChecked = false;

bool isHiddenPassword = true;

final email = TextEditingController();
final password = TextEditingController();

class _SignInViewState extends State<SignInView> {
   TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  final Auth _authlogin = Auth();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                             SizedBox(
                  height: MediaQuery.of(context).size.height/15),
                  Text("Welcome Back ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w700
                  ),),
                 SizedBox(
                  height: MediaQuery.of(context).size.height*0.01),
                    Text("Login to your account to continue your shopping",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400
                  ),),
                  
                  Form(child: Column(
                    children: [
                       SizedBox(
                  height: MediaQuery.of(context).size.height*0.05),
                   Container(
                       height: MediaQuery.of(context).size.height*0.12,
                       width: MediaQuery.of(context).size.width*1,
                       decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(8),
                        shape: BoxShape.rectangle
                        ),
                        child: Padding(padding: const EdgeInsets.all(0.8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: const EdgeInsets.only(left: 10),
                            child: Text("Email"),
                            ),
                            TextFormField(
                            controller: email,
                              decoration: InputDecoration(
                                hintText: "moni@gmail.com",
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                )
                              ),
                            )
                          ],
                        ),
                        ),
                      ),

                      
                       SizedBox(
                  height: MediaQuery.of(context).size.height*0.05),
                   Container(
                       height: MediaQuery.of(context).size.height*0.12,
                       width: MediaQuery.of(context).size.width*1,
                       decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(8),
                        shape: BoxShape.rectangle
                        ),
                        child: Padding(padding: const EdgeInsets.all(0.8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: const EdgeInsets.only(left: 10),
                            child: Text("Password"),
                            ),
                            TextFormField(
                              controller: password,
                              decoration: InputDecoration(
                                hintText: "..................",
                                suffixIcon: InkWell(
                                  onTap: _togglePasswordView,
                                  child: Icon(
                                    Icons.visibility
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                )
                              ),
                            )
                          ],
                        ),
                        ),
                      ),
                      SizedBox(
                  height: MediaQuery.of(context).size.height*0.03),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(value: isChecked, onChanged: (value){
                        setState(() => isChecked = value!,);
                      },
                      activeColor: Colors.grey,
                      checkColor: Colors.white,
                      )
                    ],
                  ),
                       SizedBox(
                  height: MediaQuery.of(context).size.height*0.03),
                  button("Sign In", onPressed: () { 
                    if(formKey.currentState!.validate()){
                      _authlogin.signInWithEmailAndPassword(
                        email: emailController.text, password: passwordController.text);
                    }
                   }),
                    SizedBox(
                  height: MediaQuery.of(context).size.height*0.01),

                    Align(
                        alignment: Alignment.center,
                        child: Text("Or",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20
                        ),
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton.icon(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Colors.white
                              )
                            ),
                            onPressed: (){}, icon: Icon(Icons.whatsapp,
                            color: Colors.greenAccent,
                            ), label: Text("Whatsapp",
                            style: TextStyle(
                              color: Colors.black
                            ),
                            )),
                          ElevatedButton.icon(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Colors.white
                              )
                            ),
                            onPressed: (){}, icon: Icon(Icons.facebook_rounded,
                            color: Colors.blueAccent
                            ), label: Text("Facebook",
                            style: TextStyle(
                              color: Colors.black
                            ),
                            )),
                        ],
                      ), 
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Already have an account?",
                          style: TextStyle(fontSize: 15),
                          ),
                          IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward)),
                        ],
                      )
                    ]
                  
                    )
             ) ],

            )
      ))],
      ),
    );
  }
}

void _togglePasswordView() {
     isHiddenPassword = !isHiddenPassword;
}

ElevatedButton button(String name, {required void Function() onPressed}){
  return ElevatedButton(
    style:
    ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black)),
    onPressed: (){},
 child: Padding(padding: const EdgeInsets.symmetric(vertical :15),
 child: Center(
  child: Text(name,
  style: TextStyle(fontSize: 20),
  ) ,)
  ));
}