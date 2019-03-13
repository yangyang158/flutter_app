import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';

//主函数（入口函数）
void main() => runApp(new MyApp());
class MyApp extends StatelessWidget {
    int _selectedIndex = 1;

    @override
    Widget build(BuildContext context) {
        //返回一个Material风格的组件
        return new MaterialApp(
            title: 'Welcome to Flutter',
            // theme: new ThemeData(
            //     brightness: Brightness.dark,
            //     primaryColor: Colors.lightBlue[800],
            // ),
            home: new Scaffold(
                appBar: new AppBar(
                    title: new Text('欢迎来到淘拍拍'),
                ),
                body: new Center(
                    child: new WidgetContainer()
                ),
                bottomNavigationBar: BottomNavigationBar(
                    items: <BottomNavigationBarItem>[
                        BottomNavigationBarItem(
                            icon: Icon(Icons.home), title: Text('首页')),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.favorite_border), title: Text('推荐')),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.perm_identity), title: Text('我')),
                    ],
                    currentIndex: _selectedIndex,
                    fixedColor: Colors.deepPurple,
                    //onTap: _onItemTapped,
                ),
            ),
           
        );
    }

  // void _onItemTapped(int index){
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }
}

class WidgetText extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        //Text 组件的 常用属性 了解
        return new Text(
            'hello candy',
            textAlign: TextAlign.center,//文本的对齐方式
            maxLines: 1,//设置最多显示的行数
            overflow: TextOverflow.ellipsis,//设置文本溢出方式
            softWrap: false,//是否自动换行，若为false，文字将不考虑容器大小，单行显示，超出屏幕部分将默认截断处理
            style:TextStyle(
                fontSize: 25,//字体大小
                color: Colors.green,//字体颜色
                decoration: TextDecoration.underline,//下划线方式
                decorationStyle: TextDecorationStyle.wavy,//下划线样式
            ),
        );
    }
}

class WidgetImage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        //Image 组件的 常用属性 了解
        return new Image.network(
            'https://avatar.csdn.net/8/9/A/3_chenlove1.jpg',
            //fit: BoxFit.cover,//控制图片的拉伸和挤压,若设置了alignment则不生效
            color: Colors.lightBlue,
            colorBlendMode: BlendMode.darken,//图片的混合模式,和color属性配合使用，能让图片改变颜色
            repeat: ImageRepeat.repeat,//repeat图片重复
        );
    }
}


class WidgetListView extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        //ListView 列表组件的 常用属性 了解
        return new ListView(
            scrollDirection:Axis.horizontal,//方向分横向滚动、纵向滚动
            //scrollDirection: Axis.horizontal,
            children: <Widget>[
                // new ListTile(
                //     leading: new Icon(Icons.access_time),
                //     title: new Text('++++++++')
                // ),
                // new ListTile(
                //     leading: new Icon(Icons.access_time),
                //     title: new Text('++++333++++')
                // ),
                // new ListTile(
                //     leading: new Icon(Icons.access_time),
                //     title: new Text('+++444+++++')
                // ),
                // new ListTile(
                //     leading: new Icon(Icons.access_time),
                //     title: new Text('+++555+++++')
                // ),
                // new Image.network(
                //     'http://jspang.com/static/myimg/blog_guanggao1_10.png'
                // ),
                // new Image.network(
                //     'http://jspang.com/static/myimg/dashangwx.jpg'
                // ),
                // new Image.network(
                //     'http://jspang.com/static/myimg/WechatIMG12.jpeg',
                // ),
                new Container(
                    width: 100.0,
                    color: Colors.pink,
                ),
                new Container(
                    width: 200.0,
                    color: Colors.green,
                ),
                new Container(
                    width: 300.0,
                    color: Colors.red,
                ),
            ],
        );
    }
}


class WidgetContainer extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        //Container 组件的 常用属性 了解
        return new Container(//类比div标签
            //child: new WidgetText(),
            child: new WidgetListView(),
            //alignment: Alignment.topCenter,//Container内child的对齐方式
            //width: 400.0,
            //height: 500.0,//容器的高度
            //color: Colors.lightBlue,//容器的背景颜色
            //padding: const EdgeInsets.all(20.0),//容器的内边距是10，即左右上下全部为10
            padding:const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),//容器的左右边距10，上下边距20
            //margin:const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),//容器的左右边距10，上下边距20
            //margin: EdgeInsets.all(10.0),//容器的外边距是10，即左右上下全部为10
            decoration: BoxDecoration(//和color不能共存设置边框、背景色、背景图片、圆角、阴影、渐变等属性
                // gradient: LinearGradient(
                //     colors:[Colors.lightBlue,Colors.greenAccent,Colors.purple]
                // ),
                // border: Border.all(width: 2.0, color:Colors.red),//边框设置
                // borderRadius:BorderRadius.all(new Radius.circular(20.0)),//圆角设置
                // color: Colors.lightBlue,//容器背景色
                // image: new DecorationImage(
                //     image: new NetworkImage('https://avatar.csdn.net/8/9/A/3_chenlove1.jpg'), // 网络图片
                //     fit: BoxFit.fill // 填满
                // )
            ),
            //transform: new Matrix4.rotationY(45.0),//旋转
        );
    }
}

class ContainerBottom extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        print(111);

        return new Text('666, Hello World');
    }
}
