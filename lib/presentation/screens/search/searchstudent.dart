import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studentapp/presentation/widgets/navigation.dart';

import '../../../application/bloc/home_bloc.dart';
import '../view/viewstudentwidget.dart';

class Mysearch extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = '';
            }
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text(""""$query" not found in list"""),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final listItems = query.isEmpty
            ? state.students
            : state.students
                .where((element) => element.name
                    .toLowerCase()
                    .startsWith(query.toLowerCase().toString()))
                .toList();
        return listItems.isEmpty
            ? const Center(child: Text("No Data Found!"))
            : ListView.builder(
                itemCount: listItems.length,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.only(left: 15.00, right: 15.00),
                      child: Column(
                        children: [
                          ListTile(
                            leading: getimage(listItems[index]),
                            title: Text(listItems[index].name),
                            subtitle: Text(
                                "Gender : ${(listItems[index].gender.toString())}"),
                            onTap: () {
                              nextpage(
                                  context: context,
                                  screen: ViewStudentWidget(index: index));
                            },
                          ),
                          const Divider(),
                        ],
                      ));
                });
      },
    );
  }

  getimage(data) {
    if (data.image == null) {
      return const CircleAvatar(
        backgroundImage: AssetImage('assets/images/avatar.png'),
      );
    } else {
      return CircleAvatar(
        backgroundImage: FileImage(File(data.image)),
      );
    }
  }
}
