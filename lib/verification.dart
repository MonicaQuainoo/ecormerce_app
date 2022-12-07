import 'package:ecommerceapp/signup.dart';
import 'package:flutter/material.dart';

class VerificationViewState extends StatelessWidget {
  const VerificationViewState({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: 
          [Column(children: [
            Container(
              height: MediaQuery.of(context).size.height * 1,
              width: MediaQuery.of(context).size.height* 1,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage("https://dezangozone.com/wp-content/uploads/2020/04/smart2Bcausal2Boutfit2Bideas2B2528262529.jpg")
                ),
                ),
                 child:Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 20),
                   child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height*0.02),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("Browse",
                              style: TextStyle(
                                fontSize: 20, color: Colors.white
                              ),
                              ),
                              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_rounded,
                              size: 20,
                              color: Colors.white,
                              ))
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.5),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Make your shopping",
                                      style: TextStyle(
                                        color: Colors.white, fontSize: 25
                                      ),
                                    )
                                  ),
                                ],
                              ),
                              ),
                              SizedBox(
                                height: 50,
                                width: 310,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Colors.white)
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "Sign In",
                                    style: TextStyle(color: Colors.black),
                                  )
                                ),
                              ),
                      ],
                    )
                   ),
                 )
              ),
          ]
          ),
        ],
      )
    );
  }
}