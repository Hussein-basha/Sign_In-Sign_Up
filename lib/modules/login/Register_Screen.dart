import 'package:flutter/material.dart';
import 'package:login_and_register/modules/login/Login_Screen.dart';
import 'package:login_and_register/shared/components/components.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var firstController = TextEditingController();

  var emailController = TextEditingController();

  var lastController = TextEditingController();

  var passwordController = TextEditingController();

  var confirmPasswordController = TextEditingController();

  var formkeyRegister = GlobalKey<FormState>();

  bool ispasswordRegister = true ;

  bool isconfirmpasswordRegister = true ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed:()
          {
            Navigator.push(context,
              MaterialPageRoute(
                builder: (context) =>  LoginScreen(),
              ),);
          },
            icon:const Icon(Icons.keyboard_arrow_left,),
        ),
        title:const Text(
          'Register',
        ),
        actions: [
          IconButton(onPressed:()
          {
            print('Notification Clicked!');
          },
            icon:const Icon(Icons.notification_important,),),
          IconButton(onPressed: ()
          {
            print('Search Clicked!');
          },
            icon:const Icon(Icons.search,),),
        ],
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        color: Colors.black26,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: formkeyRegister,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Register Now',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        //backgroundColor: Colors.black26,
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    FormFieldRegisterfname(
                        controller: firstController,
                        type:TextInputType.name,
                        label:'First Name' ,
                        onSubmit: (String value){print(value);},
                        onChange: (String value){print(value);},
                        validate:(value)
                      {
                        if(value!.isEmpty)
                          {
                            return 'First Name Must Not Be Empty';
                          }
                        return null;
                      },
                        prefix:Icons.account_circle_outlined,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    FormFieldRegisterlname(
                      controller: lastController,
                      type:TextInputType.name,
                      label:'Last Name' ,
                      onSubmit: (String value){print(value);},
                      onChange: (String value){print(value);},
                      validate:(value)
                      {
                        if(value!.isEmpty)
                        {
                          return 'Last Name Must Not Be Empty';
                        }
                        return null;
                      },
                      prefix:Icons.account_circle_outlined,
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    defaultFormField(
                      controller: emailController,
                      type:TextInputType.emailAddress,
                      label:'Email',
                      onSubmit: (String value){print(value);},
                      onChange: (String value){print(value);},
                      onTap: (){},
                      validate:(value)
                      {
                        if(value!.isEmpty)
                        {
                          return 'Email Must Not Be Empty';
                        }
                        return null;
                      },
                      prefix:Icons.email,
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    defaultFormFieldpass(
                      controller:passwordController,
                      type:TextInputType.visiblePassword,
                      label:'Password',
                      onSubmit: (String value){print(value);},
                      onChange: (String value){print(value);},
                      validate:(value)
                      {
                        if(value!.isEmpty)
                        {
                          return 'Password Must Not Be Empty';
                        }
                        return null;
                      },
                      prefix:Icons.lock,
                      suffix:ispasswordRegister ? Icons.visibility_off : Icons.visibility,
                      suffixpressed: ()
                      {
                        setState(() {
                          ispasswordRegister = !ispasswordRegister;
                        });
                      },
                      ispass: ispasswordRegister,

                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    defaultFormFieldConfirmPass(
                      controller:confirmPasswordController,
                      type:TextInputType.visiblePassword,
                      label:'Confirm Password',
                      onSubmit: (String value){print(value);},
                      onChange: (String value){print(value);},
                      validate:(value)
                      {
                        if(value!.isEmpty)
                        {
                          return 'Confirm Password Must Not Be Empty';
                        }
                        else if(confirmPasswordController.text != passwordController.text)
                          {
                            return 'Confirm Password Must Be The Same As The Original Password';
                          }
                        return null;
                      },
                      prefix:Icons.lock,
                      suffix:isconfirmpasswordRegister ? Icons.visibility_off : Icons.visibility,
                      suffixpressed: ()
                      {
                        setState(() {
                          isconfirmpasswordRegister = !isconfirmpasswordRegister;
                        });
                      },
                      isconfirmpass: isconfirmpasswordRegister,

                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    ButtonRegister(
                      function:()
                      {
                        if(formkeyRegister.currentState!.validate())
                          {
                            print(firstController.text);
                            print(lastController.text);
                            print(emailController.text);
                            print(passwordController.text);
                            print(confirmPasswordController.text);

                            Navigator.push(context,
                              MaterialPageRoute(
                                builder: (context) =>  LoginScreen(),
                              ),);
                          }

                      },
                        text:'Register',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}