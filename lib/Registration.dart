import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  TextEditingController PhoneNumber = TextEditingController();
  TextEditingController Password = TextEditingController();
  TextEditingController UserName = TextEditingController();
  var valid=GlobalKey<FormState>();
  bool flag=true;

  @override
  Widget build(BuildContext context) {
    if (flag == true) {
      return Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('asset/register.png'), fit: BoxFit.cover),
          ),
          child: SingleChildScrollView(
            child: Form(
              key: valid,
              child: Column(

                children: [

                  SizedBox(
                    height: 60,
                  ),

                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Text(
                          'Create \nAccount',
                          style: TextStyle(color: Colors.white, fontSize: 33),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Center(

                    child: Padding(

                      padding: const EdgeInsets.all(15.0),
                      child: Container(

                        width: 340,
                        child: TextFormField(
                          validator: (value) {
                            if(value==null){
                              return 'Enter name';
                            }
                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: UserName,
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              labelText: 'UserName',
                              suffixIcon: Icon(Icons.person),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(9)
                              )
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      width: 340,
                      child: TextFormField(

                        validator: (value){
                          if(value!.isEmpty){
                            return 'no data';
                          }else if(value.length<10){
                            return 'too short';
                          }
                        },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: PhoneNumber,

                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          labelText: 'PhoneNumber',
                            suffixIcon: Icon(Icons.numbers),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                           ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        width: 340,
                        child: TextFormField(
                          validator: (value){
                            if(value!.isEmpty){
                              return 'no data';
                            }else if(value.length<8){
                              return 'too short';
                            }
                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                            controller: Password,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              labelText: 'Password',
                                suffixIcon: Icon(Icons.password),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                            )),
                      ),
                    ),
                  ),

                  ),
                  SizedBox(
                    height: 29,
                  ),
                  InkWell(
                    onTap: () {
                      if(valid.currentState!.validate()){  print('Clicked');}

                    },
                    child: Container(
                      width: 150,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      // color: Colors.lightBlueAccent,
                      child: Center(
                        child: Text(
                          'Sing up',
                          style: TextStyle(fontSize: 19),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(

                      children: [
                        SizedBox(
                          width: 40,
                        ),
                        Text('Already account', style: TextStyle(fontSize: 17),),
                        TextButton(onPressed: () {
                          setState(() {

                            flag=false;
                          });

                        }, child: Text(
                          'Sign in...', style: TextStyle(fontSize: 17),
                        ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
    else {
      return  Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('asset/login.png'), fit: BoxFit.cover),
          ),
          child: SingleChildScrollView(
            child: Form(
              key: valid,
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),

                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Text(
                          'Welcome \nBack',
                          style: TextStyle(color: Colors.white, fontSize: 33),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),

                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      width: 340,
                      child: TextFormField(
                        validator: (value){
                          if(value!.isEmpty){
                            return 'no data';
                          }else if(value.length<10){
                            return 'too short';
                          }
                        },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: PhoneNumber,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          labelText: 'PhoneNumber',
                            suffixIcon: Icon(Icons.numbers),
                          filled: true,

                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        width: 340,
                        child: TextFormField(
                          validator: (value){
                            if(value!.isEmpty){
                              return 'no data';
                            }else if(value.length<8){
                              return 'too short';
                            }
                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                            controller: Password,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              labelText: 'Password',
                                suffixIcon: Icon(Icons.password),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                            )),
                      ),
                    ),
                  ),

                  ),
                  SizedBox(
                    height: 29,
                  ),
                  InkWell(
                    onTap: () {
                      if(valid.currentState!.validate()){  print('Clicked');}

                    },
                    child: Container(
                      width: 150,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.black


                      ),

                      // color: Colors.lightBlueAccent,
                      child: Center(
                        child: Text(
                          'Sign in',
                          style: TextStyle(fontSize: 19,color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(

                      children: [
                        SizedBox(
                          width: 40,
                        ),
                        Text('Dont have account', style: TextStyle(fontSize: 17),),
                        TextButton(onPressed: () {
                          setState(() {
                            flag=true;
                          });

                        }, child: Text(
                          'Sing in...', style: TextStyle(fontSize: 17),
                        ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
    }
  }

