
import 'package:flutter/material.dart';

class DemoExpansion extends StatefulWidget {
  const DemoExpansion({Key? key}) : super(key: key);

  @override
  _DemoExpansionState createState() => _DemoExpansionState();
}

class _DemoExpansionState extends State<DemoExpansion> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ExpansionPanelList(
            expansionCallback: (i,boolval){
              print(boolval);
              setState(() {
                isExpanded=! isExpanded;
              });
            },
            children: [
              ExpansionPanel(
                 isExpanded: isExpanded,
                  headerBuilder: (_,boolval){
                   return Container(child: Text("Chapter A",style: TextStyle(color: Colors.blue)),);
                  },
                  body: Column(
                    children: [
                      Container(
                          alignment:Alignment.topLeft,
                          child: Text("Section A0")),
                      SizedBox(height: 20,),
                      Container(
                          alignment:Alignment.topLeft,
                          child: Text("Section A1")),
                      SizedBox(height: 20,),
                      Container(
                          alignment:Alignment.topLeft,
                          child: Text("Section A2")),


                    ],
                  )),
              ExpansionPanel(
                isExpanded: isExpanded,
                  headerBuilder:(_,boolval){
                  return Container( child: Text("Chapter B",style: TextStyle(color: Colors.blue)),);
                  }, body:Column(
                    children: [
                      Container(
                alignment: Alignment.topLeft,
                      child: Text("Section B0 ")),
                      SizedBox(height: 20,),
                      Container(
                          alignment: Alignment.topLeft,
                          child: Text("Section B1")
                      ),
                    ],
                  )),

              ExpansionPanel(
                  isExpanded: isExpanded,
                  headerBuilder:(_,boolval){
                    return Container( child: Text("Chapter C",style: TextStyle(color: Colors.blue)),);
                  }, body:Column(
                    children: [
                      Container(
                alignment: Alignment.topLeft,
                      child: Text("Section C0")),
                      SizedBox(height: 20,),
                      Container(
                          alignment: Alignment.topLeft,
                          child: Text("Section C1")),

                    ],
                  )),
              
              
              ExpansionPanel(
                  isExpanded: isExpanded,
                  headerBuilder:(_,boolval){
                    return Container( child: Text("Chapter C2",style: TextStyle(color: Colors.blue),));
                  }, body:Column(
                    children: [
                      Container(
    alignment: Alignment.topLeft,child: Text("Item C2.0 ")),
                      SizedBox(height: 20,),
                      Container(
                          alignment: Alignment.topLeft,child: Text("Item C2.1 ")
                      ),
                    ],
                  ),

    //\nItem C2.1",))),




              ) ])
        ],
      )

    );
  }
}
