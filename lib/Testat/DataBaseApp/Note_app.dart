import 'package:dummy_pro/Testat/DataBaseApp/Hive.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class NoteAppScreen extends StatefulWidget {
  const NoteAppScreen({super.key});

  @override
  State<NoteAppScreen> createState() => _NoteAppScreenState();
}

class _NoteAppScreenState extends State<NoteAppScreen> {
  final _noteController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.menu),
        backgroundColor: Colors.blue,
        title: const Text(
          "Note App",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              //  HiveHelpers.noteList.clear();

              HiveHelpers.clearNotes();
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Clear All Notes",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          _noteController.text = "";

          showAlertDialog(context);
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: ListView.builder(
          itemCount: HiveHelpers.noteList.length,
          itemBuilder: (context, index) => InkWell(
                onTap: () {
                  _noteController.text = HiveHelpers.noteList[index];

                  showAlertDialog(
                    context,
                    index: index,
                    isEditing: true,
                  );
                },
                child: Stack(
                  children: [
                    Container(
                        width: double.infinity,
                        margin: EdgeInsets.all(12),
                        height: 100,
                        decoration: BoxDecoration(
                          color: index == 0
                              ? Colors.blue.withOpacity(.2)
                              : index % 2 == 0
                                  ? Colors.green.withOpacity(.2)
                                  : Colors.orange.withOpacity(.2),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                            child: Text(
                          HiveHelpers.noteList[index],
                          style: TextStyle(fontSize: 18),
                        ))),
                    Positioned(
                      top: 20,
                      right: 20,
                      child: InkWell(
                        onTap: () {
                          //  HiveHelpers. noteList.removeAt(index);
                          HiveHelpers.removeNote(index);
                          setState(() {});
                        },
                        child: Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                      ),
                    )
                  ],
                ),
              )),
    );
  }

  showAlertDialog(
    BuildContext context, {
    bool? isEditing = false,
    int? index,
  }) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {
        if (_noteController.text.isNotEmpty) {
          if (isEditing!) {
            // HiveHelpers.noteList[index!] = _noteController.text;

            HiveHelpers.UpdateNote(index!, _noteController.text);
          } else {
            //  HiveHelpers. noteList.add(_noteController.text);

            HiveHelpers.addNotes(_noteController.text);
          }
          setState(() {});

          Get.back();
        }
      },
    );
    Widget cancelButton = TextButton(
      child: Text("CANCEL"),
      onPressed: () {
        Get.back();
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(" Add your Note"),
      content: TextFormField(
        onChanged: (v) {
          setState(() {});
        },
        controller: _noteController,
      ),
      actions: [
        okButton,
        cancelButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}

/// Note
/// Show notes
/// Add
/// Remove
/// Remove All
/// Update