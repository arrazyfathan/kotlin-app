import 'package:flutter/material.dart';
import 'package:kotlin_app/state_management/basic_state_management/model/contact.dart';

class StateManagementPage extends StatelessWidget {
  const StateManagementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
      ),
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: ContactBook(),
          builder: (context, value, child) {
            final contacts = value;
            return ListView.builder(
              itemCount: contacts.length,
              itemBuilder: (context, index) {
                final contact = contacts[index];
                return Dismissible(
                  key: ValueKey(contact.id),
                  child: Material(
                    color: Colors.white,
                    elevation: 6.0,
                    child: ListTile(
                      title: Text(contact.name),
                    ),
                  ),
                  onDismissed: (direction) {
                    // contacts.remove(contact);
                    ContactBook().remove(contact: contact);
                  },
                );
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.of(context).pushNamed('/new-contact');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
