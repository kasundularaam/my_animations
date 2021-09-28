import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:my_animations/logic/cubit/knightrider_cubit/knightrider_cubit.dart';
import 'package:my_animations/screens/templates/inner_screen_tmpl.dart';

import 'package:sizer/sizer.dart';

class KnightRiderScreen extends StatefulWidget {
  final String name;
  const KnightRiderScreen({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  _KnightRiderScreenState createState() => _KnightRiderScreenState();
}

class _KnightRiderScreenState extends State<KnightRiderScreen> {
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<KnightriderCubit>(context).runForword();
    return InnerScreenTmpl(
      title: widget.name,
      content: Container(
        color: Colors.black,
        child: BlocConsumer<KnightriderCubit, KnightriderState>(
          listener: (context, state) {
            if (state is KnightriderFowordEnd) {
              BlocProvider.of<KnightriderCubit>(context).runBackword();
            } else if (state is KnightriderBackwordEnd) {
              BlocProvider.of<KnightriderCubit>(context).runForword();
            }
          },
          builder: (context, state) {
            if (state is KnightriderRunning) {
              return Center(
                child: Row(
                  children: rowItems(
                      count: state.count,
                      high: state.high,
                      mid: state.mid,
                      low: state.low),
                ),
              );
            } else {
              return Container(
                color: Colors.black,
              );
            }
          },
        ),
      ),
    );
  }

  List<Widget> rowItems({
    required int count,
    required int high,
    required int mid,
    required int low,
  }) {
    List<Widget> rowItems = [];
    Color color = Colors.black;
    for (var i = 0; i < count; i++) {
      if (i == high) {
        color = Colors.red.withOpacity(1);
      } else if (i == mid) {
        color = color = Colors.red.withOpacity(0.66);
      } else if (i == low) {
        color = color = Colors.red.withOpacity(0.33);
      } else {
        color = color = Colors.black;
      }
      rowItems.add(RowItem(color: color));
    }
    return rowItems;
  }
}

class RowItem extends StatelessWidget {
  final Color color;
  const RowItem({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 5.w,
      height: 2.h,
      color: color,
    );
  }
}
