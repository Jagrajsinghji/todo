import 'package:flutter/material.dart';
// import 'package:floaty_head/floaty_head.dart';
import 'package:todo/UI/widgets/custom_shape.dart';
import 'package:todo/UI/widgets/responsive_ui.dart';
import 'package:todo/UI/widgets/textformfield.dart';
import 'package:todo/constants/constants.dart';

import 'homepage.dart';


class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignInScreen(),
    );
  }
}

class SignInScreen extends StatefulWidget {

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  // final FloatyHead floatyHead = FloatyHead();
  //
  // final header = FloatyHeadHeader(
  //   title: FloatyHeadText(
  //     text: "Outgoing Call",
  //     fontSize: 10,
  //     textColor: Colors.black45,
  //     fontWeight: FontWeight.normal,
  //     padding: FloatyHeadPadding(
  //       bottom: 4,
  //       left: 5,
  //       right: 5,
  //       top: 5,
  //     ),
  //   ),
  //   padding: FloatyHeadPadding.setSymmetricPadding(12, 12),
  //   subTitle: FloatyHeadText(
  //     text: "8989898989",
  //     fontSize: 14,
  //     fontWeight: FontWeight.bold,
  //     padding: FloatyHeadPadding(
  //       bottom: 4,
  //       left: 5,
  //       right: 5,
  //       top: 5,
  //     ),
  //     textColor: Colors.black87,
  //   ),
  //   decoration: FloatyHeadDecoration(startColor: Colors.grey[100]),
  //   button: FloatyHeadButton(
  //       text: FloatyHeadText(
  //         fontWeight: FontWeight.bold,
  //         text: "Personal",
  //         fontSize: 10,
  //         textColor: Colors.black45,
  //         padding: FloatyHeadPadding(
  //           bottom: 4,
  //           left: 5,
  //           right: 5,
  //           top: 5,
  //         ),
  //       ),
  //       tag: "personal_btn"),
  // );
  //
  // final body = FloatyHeadBody(
  //   rows: [
  //     EachRow(
  //       columns: [
  //         EachColumn(
  //           text: FloatyHeadText(
  //             fontWeight: FontWeight.bold,
  //             text: "Updated body",
  //             fontSize: 12,
  //             textColor: Colors.black45,
  //             padding: FloatyHeadPadding(
  //               bottom: 4,
  //               left: 5,
  //               right: 5,
  //               top: 5,
  //             ),
  //           ),
  //         ),
  //       ],
  //       gravity: ContentGravity.center,
  //     ),
  //     EachRow(columns: [
  //       EachColumn(
  //         text: FloatyHeadText(
  //           text: "Updated long data of the body",
  //           fontSize: 12,
  //           textColor: Colors.black87,
  //           fontWeight: FontWeight.bold,
  //           padding: FloatyHeadPadding(
  //             bottom: 4,
  //             left: 5,
  //             right: 5,
  //             top: 5,
  //           ),
  //         ),
  //         padding: FloatyHeadPadding.setSymmetricPadding(6, 8),
  //         decoration: FloatyHeadDecoration(
  //             startColor: Colors.black12, borderRadius: 25.0),
  //         margin: FloatyHeadMargin(top: 4),
  //       ),
  //     ], gravity: ContentGravity.center),
  //     EachRow(
  //       columns: [
  //         EachColumn(
  //           text: FloatyHeadText(
  //             text: "Notes",
  //             fontSize: 10,
  //             textColor: Colors.black45,
  //             fontWeight: FontWeight.normal,
  //             padding: FloatyHeadPadding(
  //               bottom: 4,
  //               left: 5,
  //               right: 5,
  //               top: 5,
  //             ),
  //           ),
  //         ),
  //       ],
  //       gravity: ContentGravity.left,
  //       margin: FloatyHeadMargin(top: 8),
  //     ),
  //     EachRow(
  //       columns: [
  //         EachColumn(
  //           text: FloatyHeadText(
  //             text: "Updated random notes.",
  //             fontSize: 13,
  //             textColor: Colors.black54,
  //             fontWeight: FontWeight.bold,
  //             padding: FloatyHeadPadding(
  //               bottom: 4,
  //               left: 5,
  //               right: 5,
  //               top: 5,
  //             ),
  //           ),
  //         ),
  //       ],
  //       gravity: ContentGravity.left,
  //     ),
  //   ],
  //   padding: FloatyHeadPadding(left: 16, right: 16, bottom: 12, top: 12),
  // );
  //
  // final footer = FloatyHeadFooter(
  //   buttons: [
  //     FloatyHeadButton(
  //       text: FloatyHeadText(
  //         text: "Simple button",
  //         fontSize: 12,
  //         textColor: Color.fromRGBO(250, 139, 97, 1),
  //         padding: FloatyHeadPadding(
  //           bottom: 4,
  //           left: 5,
  //           right: 5,
  //           top: 5,
  //         ),
  //         fontWeight: FontWeight.normal,
  //       ),
  //       tag: "simple_button",
  //       padding: FloatyHeadPadding(left: 10, right: 10, bottom: 10, top: 10),
  //       width: 0,
  //       height: FloatyHeadButton.WRAP_CONTENT,
  //       decoration: FloatyHeadDecoration(
  //           startColor: Colors.white,
  //           endColor: Colors.white,
  //           borderWidth: 0,
  //           borderRadius: 0.0),
  //     ),
  //     FloatyHeadButton(
  //       text: FloatyHeadText(
  //         fontWeight: FontWeight.normal,
  //         padding: FloatyHeadPadding(
  //           bottom: 4,
  //           left: 5,
  //           right: 5,
  //           top: 5,
  //         ),
  //         text: "Focus button",
  //         fontSize: 12,
  //         textColor: Colors.white,
  //       ),
  //       tag: "focus_button",
  //       width: 0,
  //       padding: FloatyHeadPadding(left: 10, right: 10, bottom: 10, top: 10),
  //       height: FloatyHeadButton.WRAP_CONTENT,
  //       decoration: FloatyHeadDecoration(
  //           startColor: Color.fromRGBO(250, 139, 97, 1),
  //           endColor: Color.fromRGBO(247, 28, 88, 1),
  //           borderWidth: 0,
  //           borderRadius: 30.0),
  //     )
  //   ],
  //   padding: FloatyHeadPadding(left: 16, right: 16, bottom: 12),
  //   decoration: FloatyHeadDecoration(startColor: Colors.white),
  //   buttonsPosition: ButtonPosition.center,
  // );
  double _height;
  double _width;
  double _pixelRatio;
  bool _large;
  bool _medium;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> _key = GlobalKey();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // FloatyHead.registerOnClickListener(callBack);
    // floatyHead.openBubble();
  }



  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    _pixelRatio = MediaQuery.of(context).devicePixelRatio;
    _large =  ResponsiveWidget.isScreenLarge(_width, _pixelRatio);
    _medium =  ResponsiveWidget.isScreenMedium(_width, _pixelRatio);
    return Material(
      child: Container(
        height: _height,
        width: _width,
        padding: EdgeInsets.only(bottom: 5),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              clipShape(),
              welcomeTextRow(),
              signInTextRow(),
              form(),
              // forgetPassTextRow(),
              SizedBox(height: _height / 12),
              button(),
              signUpTextRow(),
            ],
          ),
        ),
      ),
    );
  }
  // void setCustomHeader() {
  //   floatyHead.updateFloatyHeadContent(
  //     header: header,
  //     body: body,
  //     footer: footer,
  //   );
  // }
  //
  // void closeFloatyHead() {
  //   if (floatyHead.isOpen) {
  //     floatyHead.closeHead();
  //   }
  // }

  Widget clipShape() {
    //double height = MediaQuery.of(context).size.height;
    return Stack(
      children: <Widget>[
        Opacity(
          opacity: 0.75,
          child: ClipPath(
            clipper: CustomShapeClipper(),
            child: Container(
              height:_large? _height/4 : (_medium? _height/3.75 : _height/3.5),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.orange[200], Colors.pinkAccent],
                ),
              ),
            ),
          ),
        ),
        Opacity(
          opacity: 0.5,
          child: ClipPath(
            clipper: CustomShapeClipper2(),
            child: Container(
              height: _large? _height/4.5 : (_medium? _height/4.25 : _height/4),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.orange[200], Colors.pinkAccent],
                ),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.only(top: _large? _height/30 : (_medium? _height/25 : _height/20)),
          child: Image.asset(
            'images/login.png',
            height: _height/3.5,
            width: _width/3.5,
          ),
        ),
      ],
    );
  }

  Widget welcomeTextRow() {
    return Container(
      margin: EdgeInsets.only(left: _width / 20, top: _height / 100),
      child: Row(
        children: <Widget>[
          Text(
            "Welcome",
            style: TextStyle(
              // fontWeight: FontWeight.bold,
              fontSize: _large? 60 : (_medium? 50 : 40),
            ),
          ),
        ],
      ),
    );
  }

  Widget signInTextRow() {
    return Container(
      margin: EdgeInsets.only(left: _width / 15.0),
      child: Row(
        children: <Widget>[
          Text(
            "Sign in to your account",
            style: TextStyle(
              // fontWeight: FontWeight.w200,
              fontSize: _large? 20 : (_medium? 17.5 : 15),
            ),
          ),
        ],
      ),
    );
  }

  Widget form() {
    return Container(
      margin: EdgeInsets.only(
          left: _width / 12.0,
          right: _width / 12.0,
          top: _height / 15.0),
      child: Form(
        key: _key,
        child: Column(
          children: <Widget>[
            emailTextFormField(),
            SizedBox(height: _height / 40.0),
            passwordTextFormField(),
          ],
        ),
      ),
    );
  }

  Widget emailTextFormField() {
    return CustomTextField(
      keyboardType: TextInputType.emailAddress,
      textEditingController: emailController,
      icon: Icons.email,
      hint: "Email ID",
    );

  }

  Widget passwordTextFormField() {
    return CustomTextField(
      keyboardType: TextInputType.emailAddress,
      textEditingController: passwordController,
      icon: Icons.lock,
      obscureText: true,
      hint: "Password",
    );
  }

  Widget forgetPassTextRow() {
    return Container(
      margin: EdgeInsets.only(top: _height / 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Forgot your password?",
            style: TextStyle(fontSize: _large? 14: (_medium? 12: 10)),
          ),
          SizedBox(
            width: 5,
          ),
          GestureDetector(
            onTap: () {
              print("Routing");
            },
            child: Text(
              "Recover",
              style: TextStyle(
                   color: Colors.orange[200]),
            ),
          )
        ],
      ),
    );
  }

  Widget button() {
    return RaisedButton(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      onPressed: () {

        print("Routing to your account");
        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext c){
          return MyHomePage();
        }));

      },
      textColor: Colors.white,
      padding: EdgeInsets.all(0.0),
      child: Container(
        alignment: Alignment.center,
        width: _large? _width/4 : (_medium? _width/3.75: _width/3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          gradient: LinearGradient(
            colors: <Color>[Colors.orange[200], Colors.pinkAccent],
          ),
        ),
        padding: const EdgeInsets.all(12.0),
        child: Text('SIGN IN',style: TextStyle(fontSize: _large? 14: (_medium? 12: 10))),
      ),
    );
  }

  Widget signUpTextRow() {
    return Container(
      margin: EdgeInsets.only(top: _height / 120.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Don't have an account?",
            style: TextStyle(fontSize: _large? 14: (_medium? 12: 10)),
          ),
          SizedBox(
            width: 5,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(SIGN_UP);
              print("Routing to Sign up screen");
            },
            child: Text(
              "Sign up",
              style: TextStyle(
                   color: Colors.orange[200], fontSize: _large? 19: (_medium? 17: 15)),
            ),
          )
        ],
      ),
    );
  }

}
void callBack(String tag) {
  print('CALLBACK FROM FRAGMENT BUILDED: $tag');
  switch (tag) {
    case "simple_button":
    case "updated_simple_button":
      break;
    case "focus_button":
      print("Focus button has been called");
      break;
    default:
      print("OnClick event of $tag");
  }
}