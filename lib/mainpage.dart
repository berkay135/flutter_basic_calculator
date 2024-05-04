import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var input = TextEditingController();
  var show = "";
  var list = <String>[];
  List <int> intlist = [];
  int result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Calculator", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black87,
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3,
            alignment: Alignment.bottomRight,
            color: CupertinoColors.secondaryLabel,
            child: Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Text(show,style: TextStyle(color: Colors.white,fontSize: 72,fontWeight: FontWeight.w100),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(22,15,25,0),
            child: Row( mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8,5,0,0),
                  child: SizedBox(height: MediaQuery.of(context).size.height / 11, width: MediaQuery.of(context).size.width / 5,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        show = "";
                        result = 0;
                        intlist.clear();
                        list.clear();
                      });
                    }, child: Text("AC",style: TextStyle(color: Colors.red, fontSize: 25,fontWeight: FontWeight.w200),)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8,5,0,0),
                  child: SizedBox(height: MediaQuery.of(context).size.height / 11, width: MediaQuery.of(context).size.width / 5,
                    child: ElevatedButton(onPressed: (){

                    }, child: Text("%",style: TextStyle(color: Colors.red, fontSize: 36,fontWeight: FontWeight.w200),)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8,5,0,0),
                  child: SizedBox(height: MediaQuery.of(context).size.height / 11, width: MediaQuery.of(context).size.width / 5,
                    child: ElevatedButton(onPressed: (){

                    }, child: Icon(Icons.backspace_outlined),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8,5,0,0),
                  child: SizedBox(height: MediaQuery.of(context).size.height / 11, width: MediaQuery.of(context).size.width / 5,
                    child: ElevatedButton(onPressed: (){

                    }, style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow[200]),
                        child: Text("/",style: TextStyle(color: Colors.black, fontSize: 36,fontWeight: FontWeight.w200),)
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25,10,25,0),
            child: Row( mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8,5,0,0),
                  child: SizedBox(height: MediaQuery.of(context).size.height / 11, width: MediaQuery.of(context).size.width / 5,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                         show = show + '1';
                      });
                    }, child: Text("1",style: TextStyle(fontSize: 36,fontWeight: FontWeight.w200),)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8,5,0,0),
                  child: SizedBox(height: MediaQuery.of(context).size.height / 11, width: MediaQuery.of(context).size.width / 5,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        show = show + '2';
                      });
                    }, child: Text("2",style: TextStyle(fontSize: 36,fontWeight: FontWeight.w200),)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8,5,0,0),
                  child: SizedBox(height: MediaQuery.of(context).size.height / 11, width: MediaQuery.of(context).size.width / 5,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        show = show + '3';
                      });
                    }, child: Text("3",style: TextStyle(fontSize: 36,fontWeight: FontWeight.w200),)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8,5,0,0),
                  child: SizedBox(height: MediaQuery.of(context).size.height / 11, width: MediaQuery.of(context).size.width / 5,
                    child: ElevatedButton(onPressed: (){

                    }, style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow[200]),
                        child: Text("X",style: TextStyle(color: Colors.black, fontSize: 36,fontWeight: FontWeight.w200),)
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25,10,25,0),
            child: Row( mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8,5,0,0),
                  child: SizedBox(height: MediaQuery.of(context).size.height / 11, width: MediaQuery.of(context).size.width / 5,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        show = show + '4';
                        SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
                      });
                    }, child: Text("4",style: TextStyle(fontSize: 36,fontWeight: FontWeight.w200),)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8,5,0,0),
                  child: SizedBox(height: MediaQuery.of(context).size.height / 11, width: MediaQuery.of(context).size.width / 5,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        show = show + '5';
                      });
                    }, child: Text("5",style: TextStyle(fontSize: 36,fontWeight: FontWeight.w200),)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8,5,0,0),
                  child: SizedBox(height: MediaQuery.of(context).size.height / 11, width: MediaQuery.of(context).size.width / 5,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        show = show + '6';
                      });
                    }, child: Text("6",style: TextStyle(fontSize: 36,fontWeight: FontWeight.w200),)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8,5,0,0),
                  child: SizedBox(height: MediaQuery.of(context).size.height / 11, width: MediaQuery.of(context).size.width / 5,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        show = show + '+';
                      });
                    }, style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow[200]),
                        child: Text("+",style: TextStyle(color: Colors.black, fontSize: 36,fontWeight: FontWeight.w200),)
                    ),
                  ),
                ),
              ],
            ),
          ),Padding(
            padding: const EdgeInsets.fromLTRB(25,10,25,0),
            child: Row( mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8,5,0,0),
                  child: SizedBox(height: MediaQuery.of(context).size.height / 11, width: MediaQuery.of(context).size.width / 5,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        show = show + '7';
                      });
                    }, child: Text("7",style: TextStyle(fontSize: 36,fontWeight: FontWeight.w200),)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8,5,0,0),
                  child: SizedBox(height: MediaQuery.of(context).size.height / 11, width: MediaQuery.of(context).size.width / 5,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        show = show + '8';
                      });
                    }, child: Text("8",style: TextStyle(fontSize: 36,fontWeight: FontWeight.w200),)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8,5,0,0),
                  child: SizedBox(height: MediaQuery.of(context).size.height / 11, width: MediaQuery.of(context).size.width / 5,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        show = show + '9';
                      });
                    }, child: Text("9",style: TextStyle(fontSize: 36,fontWeight: FontWeight.w200),)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8,5,0,0),
                  child: SizedBox(height: MediaQuery.of(context).size.height / 11, width: MediaQuery.of(context).size.width / 5,
                    child: ElevatedButton(onPressed: (){

                    }, style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow[200]),
                        child: Text("-",style: TextStyle(color: Colors.black, fontSize: 42,fontWeight: FontWeight.w200),)
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25,10,25,0),
            child: Row( mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,5,0,0),
                  child: SizedBox(height: MediaQuery.of(context).size.height / 11, width: MediaQuery.of(context).size.width / 5,
                    child: ElevatedButton(onPressed: (){

                    }, child: Text("#",style: TextStyle(fontSize: 36,fontWeight: FontWeight.w200),)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8,5,0,0),
                  child: SizedBox(height: MediaQuery.of(context).size.height / 11, width: MediaQuery.of(context).size.width / 5,
                    child: ElevatedButton(onPressed: (){

                    }, child: Text("0",style: TextStyle(fontSize: 36,fontWeight: FontWeight.w200),)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8,5,0,0),
                  child: SizedBox(height: MediaQuery.of(context).size.height / 11, width: MediaQuery.of(context).size.width / 5,
                    child: ElevatedButton(onPressed: (){

                    }, child: Text(".",style: TextStyle(fontSize: 36,fontWeight: FontWeight.w200),)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8,5,0,0),
                  child: SizedBox(height: MediaQuery.of(context).size.height / 11, width: MediaQuery.of(context).size.width / 5,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        list = show.split("+");
                         intlist = list.map(int.parse).toList();
                        print(intlist);
                        for(int i = 0; i < intlist.length; i++){
                          result += intlist[i];
                        }
                        show = result.toString();
                        result = 0;
                        intlist.clear();
                        list.clear();
                      });
                    }, style: ElevatedButton.styleFrom(backgroundColor: Colors.red[200]),
                        child: Text("=",style: TextStyle(color: Colors.black, fontSize: 42,fontWeight: FontWeight.w200),)
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
