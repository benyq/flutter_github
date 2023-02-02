
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github/l10n/localization_intl.dart';
import 'package:flutter_github/models/repo_entity.dart';
import 'package:flutter_github/states/UserModel.dart';
import 'package:provider/provider.dart';

class HomeRoute extends StatefulWidget {
  const HomeRoute({super.key});

  @override
  State<StatefulWidget> createState() => _HomeRouteState();

}

class _HomeRouteState extends State<HomeRoute> {

  static const loadingTag = "##loading##"; //表尾标记
  var _items = <RepoEntity>[RepoEntity()..name = loadingTag];
  bool hasMore = true; //是否还有数据
  int page = 1; //当前请求的是第几页

  @override
  Widget build(BuildContext context) {
    debugPrint('_items size ${_items.length}');
    return Scaffold(
      appBar: AppBar(title: Text(GmLocalizations.of(context).home),),
      body: const Center(
        child: Text("Home"),
      ),
    );
  }


  Widget _buildBody() {
    UserModel userModel = Provider.of<UserModel>(context);
    if (!userModel.isLogin) {
      //用户未登录，显示登录按钮
      return Center(
        child: ElevatedButton(
          child: Text(GmLocalizations.of(context).login),
          onPressed: (){
            Navigator.pushNamed(context, "login");
          },
        ),
      );
    }
    return const Text("Home");
  }
}