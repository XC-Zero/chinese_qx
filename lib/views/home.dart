import 'package:flutter/material.dart';
import 'package:qx/component/icon_float_button.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => _homeState();
}

class _homeState extends State<Home> {
  String _avatarSrc =
      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Ffa8b2457-dfd5-41be-9db3-19b0bfef8959%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1683554959&t=e10b0f90a408f4867221bb657240497a";
  String _userName = "WTF";
  String _userEmail = "645171033@qq.com";

  @override
  Widget build(BuildContext context) {
    var list = <Widget>[
      Container(
          height: 200,
          child: UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Color(0xca40ead0)),
            accountName: Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text(
                _userName,
                style: TextStyle(fontSize: 33),
              ),
            ),
            accountEmail: Row(
                children: [
                  Text(
                    _userEmail,
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
          ))
    ];
    list.addAll(_createListTile(<String, Icon>{
      "我的":const Icon(
        Icons.person,
        color: Colors.white,
      ),

      "设置": const Icon(
        Icons.settings,
        color: Colors.white,
      ),
      "退出登录": const Icon(
        Icons.exit_to_app,
        color: Colors.white,
      ),
    }));

    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            padding: EdgeInsets.zero,
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
        backgroundColor: const Color(0xca40ead0),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white.withOpacity(0.9),
        child: ListView(
          children: list,
        ),
      ),
    );
  }

  // FIXME 他喵的点击事件呢???
  // 动态添加按钮,想整成后台控制这样好点
  List<ListTile> _createListTile(Map<String, Icon> map) {
    var list = <ListTile>[];
    map.forEach((text, icon) {
      list.add(ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 0, 15, 0),
          title: IconFloatButton(
            icon: icon,
            onPressed: () {},
            text: Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )));
    });
    return list;
  }
}
