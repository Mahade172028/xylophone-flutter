import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  int a=0;
  void playFuntion(int val){
    final player = AudioCache();
    player.play('note$val.wav');
  }

  Widget buildKey({int val,Color color}){
    Widget wid=Expanded(
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
        color: color,
        child: TextButton(
          onPressed: ()async{
            playFuntion(val);
          },
          //child: Text("Click 1st"),
        ),
      ),
    );
   return wid;
  }




  //AudioPlayer playerWeb=AudioPlayer();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(

          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(val:1,color:Colors.deepOrange),
              buildKey(val:2,color:Colors.orange),
              buildKey(val:3,color:Colors.yellow),
              buildKey(val:4,color:Colors.green),
              buildKey(val:5,color:Colors.blue),
              buildKey(val:6,color:Colors.blueGrey),
              buildKey(val:7,color:Colors.grey),

            ],
          ),
        ),
      ),
    );
  }

  /*play() async {
    int result = await playerWeb.play('https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3');
    if (result == 1) {
      // success
    }
  }

  pause() async{
    int result = await playerWeb.stop();
  }*/

}
