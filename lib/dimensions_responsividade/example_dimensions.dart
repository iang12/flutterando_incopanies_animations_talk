import 'package:flutter/material.dart';
import 'package:flutterando_inconpanies_animations_talk/dimensions.dart';

class ExampleDimensions extends StatefulWidget {
  const ExampleDimensions({Key? key}) : super(key: key);

  @override
  State<ExampleDimensions> createState() => _ExampleDimensionsState();
}

class _ExampleDimensionsState extends State<ExampleDimensions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.yellow,
            width: Dimensions.getWidthSize(20, context),
            height: Dimensions.getHeightSize(20, context),
          ),
          Padding(padding: Dimensions.getEdgeInsetsSymmetric(context, horizontal: 20)),
          Container(
            color: Colors.red,
            width: Dimensions.getWidthSize(20, context),
            height: Dimensions.getHeightSize(20, context),
          ),
          SizedBox(
            height: Dimensions.getHeightSize(10, context),
          )
        ],
      ),
    );
  }
}
