import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qx/views/home.dart';

import '../component/icon_tab.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginPanelState();
}

class _LoginPanelState extends State<Login> {
  final int maxTry = 5;
  String passError = "密码不正确";
  String accountError = "账号不正确";
  bool accountFlag = true;
  bool passFlag = true;

  int nowTry = 1;

  @override
  void initState() {
    super.initState();
    nowTry = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          " 青墟",
          style: TextStyle(color: Colors.white, fontSize: 35, wordSpacing: 50),
        ),
        backgroundColor: const Color(0xca40ead0),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: const AssetImage("assets/images/img.png"),
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.5), BlendMode.dstATop)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(100),
          child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    color: Colors.white.withOpacity(0.8)),
                width: 400,
                height: 400,
                child: DefaultTabController(
                    length: 2,
                    child: Scaffold(
                      backgroundColor: Colors.transparent,
                      appBar: const TabBar(
                        labelStyle: TextStyle(fontSize: 16),
                        tabs: [
                          IconTab(
                            text: Text("账号登录"),
                            icon: Icon(Icons.people_alt_outlined),
                          ),
                          IconTab(
                            text: Text("扫码登录"),
                            icon: Icon(Icons.qr_code_2_outlined),
                          ),
                        ],
                      ),
                      body: Container(
                        padding: const EdgeInsets.fromLTRB(20, 50, 20, 10),
                        child: TabBarView(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    child: TextField(
                                  // onChanged:,
                                  decoration: InputDecoration(
                                    hintText: "账号",
                                    errorText:
                                        accountFlag ? null : accountError,
                                  ),
                                )),
                                Expanded(
                                    child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "密码",
                                    errorText: passFlag ? null : passError,
                                  ),
                                )),
                                SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                        shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        5.0)))),
                                    onPressed: _login,
                                    child: const Text(
                                      "登录",
                                      style: TextStyle(fontSize: 24, height: 2),
                                    ),
                                  ),
                                ),
                                Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        TextButton(
                                            onPressed: () {
                                              // TODO 添加 `注册` 按钮
                                              print("wtf?");
                                            },
                                            child: const Text(
                                              "注册",
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            )),
                                        TextButton(
                                            onPressed: _forgetPass,
                                            child: const Text(
                                              "忘记密码",
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            )),
                                      ],
                                    ))
                              ],
                            ),
                            Text("02")
                          ],
                        ),
                      ),
                    )),
              )),
        ),
      ),
    );
  }

  void _checkPass(pass) {}

  void _login() {
    passFlag = false;
    nowTry++;

    if (nowTry > maxTry) {
      showDialog(
          context: context,
          builder: (BuildContext ctx) {
            return Text("xxx");
          });
      return;
    }
    print(nowTry);

    setState(() {});
    Navigator.pushNamed(context, "home");
  }

  // TODO `忘记密码` 事件
  void _forgetPass() {}

  void _register() {}
}
