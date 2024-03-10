import 'package:flutter/material.dart';
import 'package:todo_app/todo_model_class.dart';

class ToDoApp extends StatefulWidget {
  final String username;

  ToDoApp({required this.username});

  @override
  State<ToDoApp> createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp> {
  TextEditingController dateController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();


  void showBottomSheet(bool doedit,[ToDoModelClass? todoModelobj] ){
    showBottomSheet(
      isScrollControlled:true,
      shape:const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        )
      ),
      isDismissible:true,
      context:context,
      builder:(context){
        return Padding(padding: 
        Padding:
        EdgeInsets.only(
          left:20,
          right:20,
          bottom:MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Column(
          mainAxisSize:MainAxisSize.min,
          children:[
            const sizedBox(
              height:10,
            ),
            Text(
              "Create Task",
              st
            )
          ]
        ),
        )
      }

    )
      
  }
  var listofColors =[
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
  ];
  List<ToDoModelClass>todoList =[
    ToDoModelClass(
      title:"Take notes",
      description:"Take notes of every app you write",
      date:"10 July 2023",
    ),
     ToDoModelClass(
      title:"Take notes",
      description:"Take notes of every app you write",
      date:"10 July 2023",
    ),
  ]

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Welcome! ${widget.username}",
            style:const TextStyle(color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w500),

          ),
          backgroundColor: Colors.grey,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(18.0),
              bottomRight: Radius.circular(18.0),
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (context,index){
            return Padding(
              padding:const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 16,
              ) ,
              child: Container(
                decoration: BoxDecoration(
                  color: lisofColors[index % listofColors.length],
                  boxShadow: const[
                    BoxShadow(
                      offset: Offset(0,10),
                      color: Color.fromARGB(0, 0, 0, 0.1)
                    )
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            )
          }
        )
        );
  }
}
