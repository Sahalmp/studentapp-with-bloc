import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studentapp/domain/constants/constants.dart';
import 'package:studentapp/presentation/screens/list/widgets/deletedialogbox.dart';
import 'package:studentapp/presentation/widgets/navigation.dart';

import '../../../application/bloc/home_bloc.dart';
import '../view/viewstudentwidget.dart';

class ListStudentWidget extends StatelessWidget {
  const ListStudentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return ListView.separated(
          itemBuilder: (ctx, index) {
            final data = state.students[index];
            return ListTile(
                onTap: () {
                  nextpage(
                      context: context,
                      screen: ViewStudentWidget(index: index));
                },
                title: Text(data.name),
                subtitle: Text("Gender : ${data.gender}"),
                trailing: IconButton(
                  onPressed: () {
                    deletedialogbox(context: context, index: index);
                  },
                  icon: const Icon(Icons.delete),
                ),
                leading: data.image == null
                    ? const CircleAvatar(
                        backgroundImage: AssetImage(avatarimage),
                      )
                    : CircleAvatar(
                        backgroundImage: FileImage(
                        File(data.image),
                      )));
          },
          separatorBuilder: ((ctx, index) => const Divider()),
          itemCount: state.students.length,
        );
      },
    );
  }
}
