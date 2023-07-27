import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}


class Apple extends StatefulWidget {

  Apple({Key? key}) : super(key: key);

  @override
  State<Apple> createState() => _AppleState();
}

class _AppleState extends State<Apple> {

  //이 밑으로 변수
  var name = ['이름1', '이름2', '이름3', '이름4'];
  var like = [0,0,0,0];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, i){
            return ListTile(
              leading: Text(like[i].toString()),
              title: Text(name[i].toString()),
              trailing: ElevatedButton(
                child: Text("좋아요"),
                onPressed: (){
                  setState(() {
                    like[i]++;
                  });
                },
              ),
            );
            }
        )
        // bottomNavigationBar: BottomSomeThing(),
      ),
    );
  }
}

var a = SizedBox(
  child: Text("안뇽", style: TextStyle(fontSize: 30),),
);

class Clover extends StatelessWidget {
  const Clover({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text("안뇽"),
    );
  }
}

class BottomSomeThing extends StatelessWidget {
  const BottomSomeThing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.call_rounded),
          Icon(Icons.message),
          Icon(Icons.contact_page)
        ],
      ),
    );
  }
}






class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 여기 안에다가 앱 디자인 등등 코딩하면 됨
      home: Scaffold(
        appBar: AppBar(
          title: Text('제목인 듯 하다'),
          backgroundColor: Colors.orange
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Image.asset("assets/images/mumumu.png", width: 100,height: 100,)),
              Container(
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("iMac M1", style: TextStyle(fontSize: 24),),
                    Text("천안시 어쩌구 저쩌구",style: TextStyle(color: Colors.grey, fontSize: 14)),
                    Text("120만원", style: TextStyle(fontSize: 14),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.favorite),
                        Text('3')
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
