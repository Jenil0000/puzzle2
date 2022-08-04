import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: puzzle()));
}

class puzzle extends StatefulWidget {
  const puzzle({Key? key}) : super(key: key);

  @override
  State<puzzle> createState() => _puzzleState();
}

class _puzzleState extends State<puzzle> {
  List<String> a = [];

  @override
  void initState() {
    super.initState();

    List<int> l = [];
    for (int i = 0; i < 9;) {
      int min = 0, max = 8;
      int no = min + Random().nextInt(max - min + 1);
      if (!l.contains(no)) {
        l.add(no);
        i++;
      }
    }
    print(l);

    for (int i = 0; i < 9; i++) {
      if (l[i] == 0) {
        a.add("");
      } else {
        a.add("${l[i]}");
      }
    }
    print(a);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Puzzle"),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: InkWell(
                    onTap: () {
                      if(a[1]=="")
                        {
                          a[1]=a[0];
                          a[0]="";
                        }
                      if(a[3]=="")
                      {
                        a[3]=a[0];
                        a[0]="";
                      }
                      setState(() {});
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: double.infinity,
                      color: Colors.black,
                      margin: EdgeInsets.all(10),
                      child: Text(
                        a[0],
                        style: TextStyle(fontSize: 100, color: Colors.white),
                      ),
                    )),
              ),
              Expanded(
                child: InkWell(
                    onTap: () {
                      if(a[0]=="")
                      {
                        a[0]=a[1];
                        a[1]="";
                      }
                      if(a[2]=="")
                      {
                        a[2]=a[1];
                        a[1]="";
                      }
                      if(a[4]=="")
                      {
                        a[4]=a[1];
                        a[1]="";
                      }

                      setState(() {});
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: double.infinity,
                      color: Colors.black,
                      margin: EdgeInsets.all(10),
                      child: Text(
                        a[1],
                        style: TextStyle(fontSize: 100, color: Colors.white),
                      ),
                    )),
              ),
              Expanded(
                child: InkWell(
                    onTap: () {
                      if(a[1]=="")
                      {
                        a[1]=a[2];
                        a[2]="";
                      }
                      if(a[5]=="")
                      {
                        a[5]=a[2];
                        a[2]="";
                      }

                      setState(() {});
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: double.infinity,
                      color: Colors.black,
                      margin: EdgeInsets.all(10),
                      child: Text(
                        a[2],
                        style: TextStyle(fontSize: 100, color: Colors.white),
                      ),
                    )),
              )
            ],
          )),


          Expanded(
              child: Row(
            children: [Expanded(
              child: InkWell(
                  onTap: () {
                    if(a[0]=="")
                    {
                      a[0]=a[3];
                      a[3]="";
                    }
                    if(a[4]=="")
                    {
                      a[4]=a[3];
                      a[3]="";
                    }
                    if(a[6]=="")
                    {
                      a[6]=a[3];
                      a[3]="";
                    }
                    setState(() {});
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: double.infinity,
                    color: Colors.black,
                    margin: EdgeInsets.all(10),
                    child: Text(
                      a[3],
                      style: TextStyle(fontSize: 100, color: Colors.white),
                    ),
                  )),
            ),
              Expanded(
                child: InkWell(
                    onTap: () {
                      if(a[1]=="")
                      {
                        a[1]=a[4];
                        a[4]="";
                      }
                      if(a[3]=="")
                      {
                        a[3]=a[4];
                        a[4]="";
                      }
                      if(a[5]=="")
                      {
                        a[5]=a[4];
                        a[4]="";
                      }
                      if(a[7]=="")
                      {
                        a[7]=a[4];
                        a[4]="";
                      }

                      setState(() {});
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: double.infinity,
                      color: Colors.black,
                      margin: EdgeInsets.all(10),
                      child: Text(
                        a[4],
                        style: TextStyle(fontSize: 100, color: Colors.white),
                      ),
                    )),
              ),
              Expanded(
                child: InkWell(
                    onTap: () {
                      if(a[2]=="")
                      {
                        a[2]=a[5];
                        a[5]="";
                      }
                      if(a[4]=="")
                      {
                        a[4]=a[5];
                        a[5]="";
                      }
                      if(a[8]=="")
                      {
                        a[8]=a[5];
                        a[5]="";
                      }
                      setState(() {});
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: double.infinity,
                      color: Colors.black,
                      margin: EdgeInsets.all(10),
                      child: Text(
                        a[5],
                        style: TextStyle(fontSize: 100, color: Colors.white),
                      ),
                    )),
              )
            ],
          )),
          Expanded(
              child: Row(
                children: [Expanded(
                  child: InkWell(
                      onTap: () {
                        if(a[3]=="")
                        {
                          a[3]=a[6];
                          a[6]="";
                        }
                        if(a[7]=="")
                        {
                          a[7]=a[6];
                          a[6]="";
                        }

                        setState(() {});
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: double.infinity,
                        color: Colors.black,
                        margin: EdgeInsets.all(10),
                        child: Text(
                          a[6],
                          style: TextStyle(fontSize: 100, color: Colors.white),
                        ),
                      )),
                ),
                  Expanded(
                    child: InkWell(
                        onTap: () {
                          if(a[4]=="")
                          {
                            a[4]=a[7];
                            a[7]="";
                          }
                          if(a[6]=="")
                          {
                            a[6]=a[7];
                            a[7]="";
                          }
                          if(a[8]=="")
                          {
                            a[8]=a[7];
                            a[7]="";
                          }


                          setState(() {});
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: double.infinity,
                          color: Colors.black,
                          margin: EdgeInsets.all(10),
                          child: Text(
                            a[7],
                            style: TextStyle(fontSize: 100, color: Colors.white),
                          ),
                        )),
                  ),
                  Expanded(
                    child: InkWell(
                        onTap: () {
                          if(a[5]=="")
                          {
                            a[5]=a[8];
                            a[8]="";
                          }
                          if(a[7]=="")
                          {
                            a[7]=a[8];
                            a[8]="";
                          }

                          setState(() {});
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: double.infinity,
                          color: Colors.black,
                          margin: EdgeInsets.all(10),
                          child: Text(
                            a[8],
                            style: TextStyle(fontSize: 100, color: Colors.white),
                          ),
                        )),
                  )
                ],
              )),
          ElevatedButton(
              onPressed: () {
                List<int> l = [];
                for (int i = 0; i < 9;) {
                  int min = 0, max = 8;
                  int no = min + Random().nextInt(max - min + 1);
                  if (!l.contains(no)) {
                    l.add(no);
                    i++;
                  }
                }
                print(l);
                a.clear();
                for (int i = 0; i < 9; i++) {
                  if (l[i] == 0) {
                    a.add("");
                  } else {
                    a.add("${l[i]}");
                  }
                }
                print(a);
                setState(() {});
              },
              child: Text("Generate")),
        ],
      ),
    );
  }
/*
  Widget abc(int i)
  {
    return Expanded(child: InkWell(
      onTap: ()
      {

        setState((){

        });
      },
          child: Container(
          alignment: Alignment.center,
          height: double.infinity,
          color: Colors.black,
          margin:EdgeInsets.all(10) ,
         child: Text(a[i],style: TextStyle(fontSize: 100,color: Colors.white),),)),);
  }*/
}
