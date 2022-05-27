import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studentapp/domain/constants/constants.dart';
import 'package:studentapp/presentation/screens/edit/editstuddentwidget.dart';
import 'package:studentapp/presentation/screens/view/widgets/columnwidget.dart';
import 'package:studentapp/presentation/widgets/navigation.dart';

import '../../../application/bloc/home_bloc.dart';

class ViewStudentWidget extends StatelessWidget {
  final int index;
  const ViewStudentWidget({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final data = state.students[index];
        return Stack(
          fit: StackFit.expand,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
            ),
            Scaffold(
              appBar: AppBar(
                title: const Text('Student details'),
                actions: [
                  IconButton(
                      onPressed: () {
                        nextpage(
                            context: context,
                            screen: EditStudentWidget(
                              data: data,
                              index: index,
                            ));
                      },
                      icon: const Icon(Icons.edit))
                ],
              ),
              backgroundColor: Colors.transparent,
              body: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 73),
                  child: Column(
                    children: [
                      height20,
                      height20,
                      SizedBox(
                        height: height * 0.43,
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            double innerHeight = constraints.maxHeight;
                            double innerWidth = constraints.maxWidth;
                            return Stack(
                              fit: StackFit.expand,
                              children: [
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    height: innerHeight * 0.72,
                                    width: innerWidth,
                                    decoration: BoxDecoration(
                                      color: Colors.teal.shade50,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Column(
                                      children: [
                                        const SizedBox(height: 80),
                                        Text(
                                          data.name,
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 30,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              ViewColumnWidget(
                                                  title: "Class",
                                                  data: data.standard),
                                              const DivideRow(),
                                              ViewColumnWidget(
                                                  title: "Gender",
                                                  data: data.gender),
                                              const DivideRow(),
                                              ViewColumnWidget(
                                                  title: "Age", data: data.age),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  right: 0,
                                  child: Center(
                                    child: Container(
                                      width: innerWidth * 0.45,
                                      height: innerWidth * 0.45,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.white, width: 2),
                                        borderRadius: BorderRadius.circular(20),
                                        image: data.image == null
                                            ? const DecorationImage(
                                                image: AssetImage(
                                                  avatarimage,
                                                ),
                                                fit: BoxFit.cover,
                                              )
                                            : DecorationImage(
                                                image: FileImage(
                                                  File(data.image),
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

class DivideRow extends StatelessWidget {
  const DivideRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 8,
      ),
      child: Container(
        height: 50,
        width: 3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.black,
        ),
      ),
    );
  }
}
