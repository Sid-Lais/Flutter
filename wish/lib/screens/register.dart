import 'package:flutter/material.dart';
import 'package:shopping_app/models/message.dart';
import 'package:shopping_app/models/seller.dart';
import 'package:shopping_app/screens/add_product.dart';
import 'package:shopping_app/services/seller_operations.dart';
import 'package:shopping_app/utils/constants.dart';
import 'package:shopping_app/utils/toast.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  late TextEditingController sellerIdCtrl;
  late TextEditingController passwordCtrl;
  late TextEditingController appIdCtrl;

  @override
  void initState() {
    super.initState();
    sellerIdCtrl = TextEditingController();
    passwordCtrl = TextEditingController();
    appIdCtrl = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Register Here'),
        ),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(16),
              child: TextField(
                controller: sellerIdCtrl,
                decoration: InputDecoration(
                    hintText: 'Enter your username here',
                    prefixIcon: Icon(Icons.login),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            // SizedBox(height: 10),
            Container(
              margin: EdgeInsets.all(16),
              child: TextField(
                controller: passwordCtrl,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Enter your password here',
                    prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: TextField(
                controller: appIdCtrl,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Enter your App Id here',
                    prefixIcon: Icon(Icons.app_registration),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.all(16),
                    child: ElevatedButton(
                        onPressed: () {
                          _register();
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => AddProduct()));
                        },
                        child: Text('Add'))),
                Container(
                    margin: EdgeInsets.all(16),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Cancel')))
              ],
            )
          ],
        )));
  }

  // fetching values from text controllers
  dynamic _register() async {
    String message = '';
    String sellerId = sellerIdCtrl.text;
    String password = passwordCtrl.text;
    String appId = appIdCtrl.text;
    // checking if correct App Id is entered or not!
    if (appId != Constants.APP_ID) {
      message = 'Wrong App Id!';
      return;
    } else {
      // initialize the Seller object and send it to add() method.
      Seller sellerObj =
          Seller.takeInput(userId: sellerId, password: password, appId: appId);
      SellerOperations opr = SellerOperations();
      Message msgObj = await opr.add(sellerObj);
      print(msgObj.message);
      createToast(msgObj.message, context);
    }
  }
}
