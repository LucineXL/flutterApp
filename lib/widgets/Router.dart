import 'package:flutter/material.dart';

class Router {
  const Router({ this.name, this.route, this.children });
  final String name;
  final String route;
  final Router children;
}

class RouterList extends StatelessWidget {

  RouterList({Key key, this.routerList}) : super(key: key);
  final List<Router> routerList;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: routerList.length,
      itemBuilder: (BuildContext context, int index) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                height: 50,
                child: new RouterPage(routerList[index]),
              ),
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}

class RouterPage extends StatelessWidget {
  RouterPage(this.router);
  final Router router;

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      onTap: () {
        Navigator.pushNamed(context, router.route);
      },
      leading: new CircleAvatar(
        backgroundColor: Theme.of(context).primaryColor,
        child: new Text(router.name[0]),
      ),
      title: new Text(router.name),
    );
  }
}