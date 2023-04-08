import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _homeState();
}

class _homeState extends State<Home> {
  String _avatarSrc =
      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Ffa8b2457-dfd5-41be-9db3-19b0bfef8959%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1683554959&t=e10b0f90a408f4867221bb657240497a";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            padding: EdgeInsets.zero,
            // style: T,
            // icon: Icon(Icons.wifi_tethering),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: SizedBox(
              width: 45,
              height: 45,
              child: CircleAvatar(
                backgroundImage: NetworkImage(_avatarSrc),
              ),
            ),
          );
        }),
        // title: const Text(
        //   " 青墟",
        //   style: TextStyle(color: Colors.white, fontSize: 35, wordSpacing: 50),
        // ),
        backgroundColor: const Color(0xca40ead0),
      ),
      drawer: Drawer(
        // surfaceTintColor: Color(0xffffffff).withOpacity(0.2),
        backgroundColor: Colors.white.withOpacity(0.9),
        child: ListView(
          children: [
            Container(
                height: 200,
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Color(0xca40ead0)),
                  accountName: Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Text(
                      "WTF",
                      style: TextStyle(fontSize: 33),
                    ),
                  ),
                  accountEmail: Row(

                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "645171033@qq.com",
                          style: TextStyle(fontSize: 20),
                        ),
                        IconButton(
                            // padding: EdgeInsets.fromLTRB(15, 0,0,0),
                            iconSize: 33,
                            onPressed: () {},
                            icon: Icon(
                              Icons.exit_to_app,
                              color: Colors.white.withOpacity(0.8),
                            )),
                      ]),
                  currentAccountPicture: SizedBox(
                    width: 70,
                    height: 70,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(_avatarSrc),
                    ),
                  ),
                )),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('设置'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('设置'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('设置'),
            ),
            ListTile(
                leading: Icon(Icons.settings),
                title: Text('设置4'),
                hoverColor: Color(0xca40ead0),
                focusColor: Color(0xca40ead0),
                selectedTileColor: Color(0xca40ead0)),
          ],
        ),
      ),
    );
  }
}
