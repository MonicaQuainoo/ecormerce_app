import 'package:flutter/material.dart';

class ForgetView extends StatefulWidget {
  const ForgetView({ Key? key }) : super(key: key);

  @override
  State<ForgetView> createState() => _ForgetViewState();
}
bool isHiddenPassword = true;
class _ForgetViewState extends State<ForgetView> {
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
                  Text("Forget Password ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w700
                  ),),
                 SizedBox(
                  height: MediaQuery  .of(context).size.height*0.01),
                    Text("Select which contact details should we use to",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400
                  ),),

                  SizedBox(
                  height: MediaQuery  .of(context).size.height*0.01),
                    Text("reset your password",
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
                  button("Sign In"),
                    SizedBox(
                  height: MediaQuery.of(context).size.height*0.01),
                    ]
                  
                    )
             ) ],

            )
      ))],
      ),
    );
  }
}
ElevatedButton button(String name){
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
void _togglePasswordView() {
     isHiddenPassword = !isHiddenPassword;
  
}