import 'package:hive/hive.dart';

class HiveHelpers {
  static const notesBox = "Notes";
  static const notesBoxkey = "NotesBoxKey";
  static var box = Hive.box(notesBox);

  static List<String> noteList = [];
  // =====>   Add Note  <=======
  // =====>   Add Note  <=======

  static void addNotes(String notes) {
    noteList.add(notes);
    box.put(notesBoxkey, noteList);
    print(box.get(notesBoxkey));
  }

  // =====>   Add All Note  <=======
  // =====>   Add All Note  <=======
  static Future<void> getAllNotes() async {
    if (box.get(notesBoxkey) != null) noteList = await box.get(notesBoxkey);
  }

  // =====>   remove Note  <=======
  // =====>   remove Note  <=======
  static void removeNote(int index) {
    noteList.removeAt(index);
    box.put(notesBoxkey, noteList);
  }

  // =====>   Clear All Note  <=======
  // =====>   Clear All Note  <=======
  static void clearNotes() {
    noteList.clear();
    box.put(notesBoxkey, noteList);
  }

  // =====>   Update Note  <=======
  // =====>   Update Note  <=======
  static UpdateNote(int index, String text) {
    noteList[index] = text;
    box.put(notesBoxkey, noteList);
  }
}
