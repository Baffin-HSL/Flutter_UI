import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

class ButtonView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('按钮'),
      ),
      body: Container(
          child: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text('RaisedButton'),
              onPressed: () {},
            ),
            FlatButton(
              child: Text('FlatButton'),
              color: Colors.blue,
              onPressed: () {},
            ),
            OutlineButton(
              child: Text('OutlineButton'),
              onPressed: () {},
            ),
            RaisedButton(
              child: Text('点击RaisedButton'),
              onPressed: () {
                showToast('点击');
              },
              onLongPress: () {
                showToast('长按');
              },
              onHighlightChanged: (highlight) {
                showToast('高亮:$highlight');
              },
            ),
            RaisedButton(
              child: Text('设置阴影'),
              onPressed: () {},
              elevation: 10.0,
            ),
            RaisedButton(
              child: Text('设置形状'),
              onPressed: () {},
              shape: BeveledRectangleBorder(
                  side: BorderSide(width: 1, color: Colors.red),
                  borderRadius: BorderRadius.circular(10)),
              elevation: 1.0,
            ),
            SizedBox(
              height: 12,
            ),
            DropdownButton(
              hint: Text('DropdownButton'),
              value: null,
              items: [
                DropdownMenuItem(
                  child: Text('语文'),
                  value: '语文',
                ),
                DropdownMenuItem(child: Text('数学'), value: '数学'),
                DropdownMenuItem(child: Text('英语'), value: '英语'),
              ],
              onChanged: (value) {},
            ),
            PopupMenuButton<String>(
              itemBuilder: (context) {
                return <PopupMenuEntry<String>>[
                  PopupMenuItem<String>(
                    value: '语文',
                    child: Text('语文'),
                  ),
                  PopupMenuItem<String>(
                    value: '数学',
                    child: Text('数学'),
                  ),
                  PopupMenuItem<String>(
                    value: '英语',
                    child: Text('英语'),
                  ),
                  PopupMenuItem<String>(
                    value: '生物',
                    child: Text('生物'),
                  ),
                  PopupMenuItem<String>(
                    value: '化学',
                    child: Text('化学'),
                  ),

                ];
              },
              onSelected: (value){
                print('$value');
              },
              onCanceled: (){
                print('onCanceled');
              },
            ),
            IconButton(
              tooltip: '这是一个图标按钮',
              icon: Icon(Icons.person),
              iconSize: 30,
              color: Colors.red,
              onPressed: () {},
            ),
            CupertinoButton(
              child: Text('ios 风格按钮'),
              onPressed: (){},
              color: Colors.blue,
              pressedOpacity: .5,
              borderRadius: BorderRadius.circular(40),
            )
          ],
        ),
      )),
    );
  }
}