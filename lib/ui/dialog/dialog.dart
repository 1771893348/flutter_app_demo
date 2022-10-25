

import 'package:flutter/material.dart';

class LoadingDialog extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: SizedBox(
          width: 100.0,
          height: 100.0,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.all(
                Radius.circular(8.0)
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [],
            ),
          ),
        ),
      ),
    );
  }

}