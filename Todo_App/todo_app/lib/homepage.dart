import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
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

  void showBottomSheet(bool doedit, [ToDoModelClass? todoModelobj]) {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        isDismissible: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Create Task",
                  style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Title",
                      style: GoogleFonts.quicksand(
                        color: const Color.fromRGBO(0, 139, 148, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextField(
                        controller: titleController,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(0, 139, 148, 1)),
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.purpleAccent),
                              borderRadius: BorderRadius.circular(12),
                            ))),
                    const SizedBox(
                      height: 12,
                    ),
                    Text("Description",
                        style: GoogleFonts.quicksand(
                          color: const Color.fromRGBO(0, 139, 148, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        )),
                    const SizedBox(
                      height: 3,
                    ),
                    TextField(
                      controller: descriptionController,
                      maxLines: 4,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(0, 139, 148, 1)),
                        ),
                        border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.purpleAccent),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text("Date",
                        style: GoogleFonts.quicksand(
                          color: const Color.fromRGBO(0, 139, 148, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        )),
                    const SizedBox(
                      height: 3,
                    ),
                    TextField(
                      controller: dateController,
                      readOnly: true,
                      decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.date_range_rounded),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(0, 139, 148, 1)),
                        ),
                        border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.purpleAccent),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onTap: () async {
                        DateTime? pickeddate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2024),
                          lastDate: DateTime(2025),
                        );

                        String formattedDate =
                            DateFormat.yMMMd().format(pickeddate!);
                        setState(() {
                          dateController.text = formattedDate;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 300,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: const Color.fromRGBO(1, 139, 148, 1),
                    ),
                    onPressed: () {
                      doedit ? submit(doedit, todoModelobj) : submit(doedit);
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Submit",
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          );
        });
  }

  var listofColors = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    Color.fromARGB(255, 231, 230, 199),
    Color.fromARGB(255, 204, 182, 204),
  ];

  List<ToDoModelClass> todoList = [
    ToDoModelClass(
      title: "Take notes",
      description: "Take notes of every app you write",
      date: "10 July 2023",
    ),
    ToDoModelClass(
      title: "Arrange Marriage",
      description: "Meet the backend team",
      date: "10 July 2023",
    ),
  ];

  void submit(bool doedit, [ToDoModelClass? todoModelobj]) {
    if (titleController.text.trim().isNotEmpty &&
        descriptionController.text.trim().isNotEmpty &&
        dateController.text.trim().isNotEmpty) {
      if (!doedit) {
        setState(() {
          todoList.add(ToDoModelClass(
              title: titleController.text.trim(),
              description: descriptionController.text.trim(),
              date: dateController.text.trim()));
        });
      } else {
        setState(() {
          todoModelobj!.date = dateController.text.trim();
          todoModelobj.title = titleController.text.trim();
          todoModelobj.description = descriptionController.text.trim();
        });
      }
    }
    clearController();
  }

  void clearController() {
    titleController.clear();
    descriptionController.clear();
    dateController.clear();
  }

  void removeTasks(ToDoModelClass todoModelobj) {
    setState(() {
      todoList.remove(todoModelobj);
    });
  }

  void editTask(ToDoModelClass todoModelobj) {
    titleController.text = todoModelobj.title;
    descriptionController.text = todoModelobj.description;
    dateController.text = todoModelobj.date;
    showBottomSheet(true, todoModelobj);
  }

  @override
  void dispose() {
    super.dispose();
    titleController.dispose();
    dateController.dispose();
    descriptionController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 122, 221, 143),
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        centerTitle: true,
        title: Text(
          "TO-DO APP",
          style: GoogleFonts.quicksand(
            fontWeight: FontWeight.w700,
            fontSize: 25,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 16,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: listofColors[index % listofColors.length],
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0, 10),
                      color: Color.fromARGB(255, 6, 119, 184),
                      blurRadius: 20,
                    )
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxdUBaLuNBb50tt_Y7dykJkX_Bd7ikG9Slufg3NZ3Sv4zmhmvYk0NoSP9S9_XMTtqG6a8&usqp=CAU'),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  todoList[index].title,
                                  style: GoogleFonts.quicksand(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                      color: const Color.fromRGBO(0, 0, 0, 1)),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  todoList[index].description,
                                  style: GoogleFonts.quicksand(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                      color: const Color.fromRGBO(0, 0, 0, 1)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 14.0,
                      ),
                      //2
                      Padding(
                          padding:
                              const EdgeInsets.only(left: 10.0, right: 10.0),
                          child: Row(
                            children: [
                              Text(
                                todoList[index].date,
                                style: GoogleFonts.quicksand(
                                    fontWeight: FontWeight.w400,
                                    color:
                                        const Color.fromRGBO(132, 132, 132, 1)),
                              ),
                              const Spacer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  GestureDetector(
                                      onTap: () {
                                        editTask(todoList[index]);
                                      },
                                      child: const Icon(
                                        Icons.edit_outlined,
                                        color: Color.fromRGBO(0, 139, 148, 1),
                                      )),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      removeTasks(todoList[index]);
                                    },
                                    child: const Icon(
                                      Icons.delete_outline,
                                      color: Color.fromRGBO(0, 139, 148, 1),
                                    ),
                                  )
                                ],
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
        onPressed: () {
          clearController();
          showBottomSheet(false);
        },
        child: const Icon(
          size: 50,
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ToDoApp(username: 'your_username'),
  ));
}
