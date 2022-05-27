import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studentapp/application/bloc/home_bloc.dart';

deletedialogbox({required context, required index}) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Delete'),
          content: const Text('Are you sure you want to delete this item'),
          actions: [
            ElevatedButton.icon(
                onPressed: () {
                  BlocProvider.of<HomeBloc>(context)
                      .add(HomeEvent.deleteStudent(index: index));
                  Navigator.of(context).pop();

                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Student Deleted'),
                    duration: Duration(milliseconds: 800),
                  ));
                },
                icon: const Icon(Icons.delete),
                label: const Text('Delete')),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.cancel),
                label: const Text('Cancel'))
          ],
        );
      });
}
