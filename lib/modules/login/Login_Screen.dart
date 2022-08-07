import 'package:flutter/material.dart';
import 'package:login_and_register/modules/login/Register_Screen.dart';
import 'package:login_and_register/shared/components/components.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  //Colors color = Colors.grey[400]!;
  var formkey = GlobalKey<FormState>();

  bool ispassword = true ;
  bool isDark = false ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu,),
        title: Text(
          'Login',
        ),
        actions: [
          IconButton(onPressed:()
            {
              print('Notification Clicked!');
            },
            icon:Icon(Icons.notification_important,),),
          IconButton(onPressed: ()
            {
              print('Search Clicked!');
            },
            icon:Icon(Icons.search,),),
          IconButton(
            onPressed:()
            {
              changeAppMode();
            },
            icon:Icon(
              Icons.brightness_4_outlined,
            ),
          ),
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
                key: formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        //backgroundColor: Colors.black26,
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    defaultFormField(
                        controller: emailController,
                        type:TextInputType.emailAddress,
                        label:'Email',
                        onSubmit: (String value){print(value);},
                        onChange:(String value){print(value);} ,
                        onTap: (){},
                        validate:(String value)
                      {
                        if(value.isEmpty)
                          {
                            return 'Email Must Not Be Empty';
                          }
                        return null;
                      },
                        prefix:Icons.email,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),

                    // TextFormField(
                    //   decoration: InputDecoration(
                    //     labelText: 'Password',
                    //     prefixIcon: Icon(
                    //       Icons.lock,
                    //     ),
                    //     suffixIcon: Icon(
                    //       Icons.remove_red_eye,
                    //     ),
                    //     border: OutlineInputBorder(),
                    //   ),
                    //   keyboardType: TextInputType.visiblePassword,
                    //   obscureText: true,
                    //   controller:passwordController,
                    //   onFieldSubmitted: (String Value)
                    //   {
                    //     print(Value);
                    //   },
                    //   onChanged: (String Value)
                    //   {
                    //     print(Value);
                    //   },
                    //   validator: (value)
                    //   {
                    //     if(value!.isEmpty)
                    //       {
                    //         return 'Password Must Not Be Empty';
                    //       }
                    //     return null;
                    //   },
                    // ),

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
                      suffix:ispassword ? Icons.visibility_off : Icons.visibility,
                      suffixpressed: ()
                      {
                        setState(() {
                          ispassword = !ispassword;
                        });
                      },
                      ispass: ispassword,

                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    defaultButton(
                      text: 'login',
                      function:()
                      {
                        if(formkey.currentState!.validate())
                          {
                            print(emailController.text);
                            print(passwordController.text);
                          }
                        emailController.text = '';
                        passwordController.text = '';
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account ?',
                        ),
                        TextButton(
                            onPressed: ()
                            {
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) =>  RegisterScreen(),
                                  ),);
                            },
                            child:Text(
                              'Register Now',
                            ),
                        ),
                      ],
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
  void changeAppMode({bool? fromShared}) {
    if (fromShared != null) {
       isDark = fromShared;
    }
    else {
      isDark = !isDark;
    }
  }

}
