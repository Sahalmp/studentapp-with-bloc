import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studentapp/presentation/screens/search/searchstudent.dart';
import 'package:studentapp/presentation/widgets/navigation.dart';

import '../../../application/bloc/home_bloc.dart';
import '../add/addstudentwidget.dart';
import 'liststudentwidget.dart';

class HomescreenWidget extends StatelessWidget {
  const HomescreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback(
      (timeStamp) {
        BlocProvider.of<HomeBloc>(context)
            .add(const HomeEvent.getallstudents());
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Students'),
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: Mysearch());
              },
              icon: const Icon(Icons.search))
        ],
      ),
      body: const SafeArea(child: ListStudentWidget()),
      floatingActionButton: FloatingActionButton(
        onPressed: () => nextpage(context: context, screen: AddStudentWidget()),
        child: const Icon(Icons.add),
      ),
    );
  }
}
