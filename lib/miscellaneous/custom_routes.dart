import 'package:flutter/material.dart';

class MoveTo {
  BuildContext context;
  Widget target;
  Function? callback;

  MoveTo({
    required this.context,
    required this.target,
    this.callback,
  });

  go() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (BuildContext targetContext) => target),
    ).then((dynamic result) {
      if(callback != null) {
        callback!(result);
      }
    });
  }
}

class ReplaceWith {
  BuildContext context;
  Widget target;

  ReplaceWith({
    required this.context,
    required this.target,
  });

  go() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (BuildContext targetContext) => target),
    );
  }
}

class RedirectBack {
  BuildContext context;
  dynamic result;

  RedirectBack({
    required this.context,
    this.result,
  });

  go() {
    Navigator.of(context).pop(result);
  }
}

class RedirectTo {
  BuildContext context;
  Widget target;

  RedirectTo({
    required this.context,
    required this.target,
  });

  go() {
    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext targetContext) => target), (route) => false);
  }
}