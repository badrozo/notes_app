import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(),
          NoteItem(),
        ],
      ),
    );
  }
}

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          ListTile(
            title: Text(
              'Note 1',
              style: TextStyle(color: Colors.black, fontFamily: 'Poppins'),
            ),
            subtitle: Text(
              'Note 1 description',
              style: TextStyle(color: Colors.black),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete, color: Colors.black)),
          ),
          Text('04/03/2023')
        ]));
  }
}
