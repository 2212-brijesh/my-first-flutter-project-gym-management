import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Indicator extends StatefulWidget {
  PageController controller;
  int itemCount;
  Indicator(this.controller, this.itemCount, {Key? key}) : super(key: key);

  @override
  State<Indicator> createState() => _IndicatorState();
}

class _IndicatorState extends State<Indicator> {
  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_handleChanges);
  }

  @override
  void dispose() {
    super.dispose();
    widget.controller.removeListener(_handleChanges);
  }

  @override
  Widget build(BuildContext context) {
    // print('Refreshing the layout');
    return Container(
        height: 50,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
            itemCount: widget.itemCount,
            itemBuilder: (context, index) {
              return _createIndicatorElement(index);
            }));
  }

  Widget _createIndicatorElement(index) {
    double w = 10;
    double h = 10;
    MaterialColor color = Colors.grey;

    if (widget.controller.page == index) {
      w = 15;
      h = 15;
      color = Colors.blueGrey;
    }
    return SizedBox(
      height: 26,
      width: 26,
      child: Center(
        child: AnimatedContainer(
          margin: EdgeInsets.all(5),
          width: w,
          height: h,
          color: color,
          duration: Duration(milliseconds: 100),
        ),
      ),
    );
  }

  _handleChanges() {
    setState(() {});
  }
}
