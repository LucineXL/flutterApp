import 'package:flutter/material.dart';

class FormDemo extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return FormDemoState();
  }
}

class FormDemoState extends State<FormDemo> {

  final TextEditingController _controller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _unamecontroller = TextEditingController();
  TextEditingController _pwdcontroller = TextEditingController();
  @override
  Widget build (BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('flutter demo - Text')),
        body: Column(children: <Widget>[
          Text('TextField'),
          TextField(
            controller: _controller,
          ),
          RaisedButton(
            child: Text('点击打印文本框内容'),
            onPressed: () {
              print(_controller.text);
            },
          ),
          Text('form 表单'),
          Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: _unamecontroller,
                  decoration: InputDecoration(
                    labelText: "用户名",
                    hintText: "用户名或邮箱",
                    icon: Icon(Icons.person)
                  ),
                  validator: (value) {
                    return value.length <= 0 ? '用户名不能为空' : null;
                  },
                ),
                TextFormField(
                  controller: _pwdcontroller,
                  decoration: InputDecoration(
                      labelText: '密码',
                      hintText: "您的登录密码",
                      icon: Icon(Icons.lock)
                  ),
                  validator: (value) {
                    return value.length <= 6 ? '密码不能少于6位' : null;
                  },
                ),
                Row(

                  children: <Widget>[
                  // 表单提交的两种方法
                  RaisedButton(
                    child: Text('提交1'),
                    padding: EdgeInsets.all(15),
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    onPressed: () {
                      if((_formKey.currentState).validate()){
                          //验证通过提交数据
                          print('提交方式1   ${_unamecontroller.text}   ${_pwdcontroller.text}');
                      }
                    },
                  ),
                  // 第二种
                  Builder(
                    builder: (context) => RaisedButton(
                      child: Text('提交2'),
                        padding: EdgeInsets.all(15),
                        color: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        onPressed: () {
                        if(Form.of(context).validate()){
                            //验证通过提交数据
                            print('提交方式2   ${_unamecontroller.text}   ${_pwdcontroller.text}');
                        }
                      },
                    ),
                  )
                ],)
              ],
            ),
          )
        ],)
    );
  }
}