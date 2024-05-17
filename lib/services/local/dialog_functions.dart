import 'package:east_buitenzorg_auto/services/local/route_functions.dart';
import 'package:flutter/material.dart';

class OkDialog {
  BuildContext context;
  String? title;
  String content;
  Function? okPressed;
  bool? headIcon;

  OkDialog({
    required this.context,
    this.title,
    required this.content,
    this.okPressed,
    this.headIcon,
  });

  show() => showDialog(
    context: context,
    builder: (BuildContext dialogContext) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        icon: headIcon != null ?
        headIcon! == true ?
        const Icon(
          Icons.mood,
          color: Colors.green,
        ) :
        const Icon(
          Icons.mood_bad,
          color: Colors.red,
        ) :
        const Icon(
          Icons.warning,
          color: Colors.yellow,
        ),
        title: Text(
          title != null ? title! : headIcon != null ? headIcon! == true ? "Sukses" : "Gagal" : "Perhatian",
          style: TextStyle(
            color: title != null ? Colors.black : headIcon != null ? headIcon! == true ? Colors.green : Colors.red : Colors.black,
          ),
        ),
        content: Text(
          content,
          textAlign: TextAlign.center,
        ),
        actions: [
          TextButton(
            onPressed: () => RedirectBack(context: context).go(),
            child: const Text(
              "OK",
            ),
          ),
        ],
      );
    },
  ).then((_) {
    if(okPressed != null) {
      okPressed!();
    }
  });
}

class OptionDialog {
  BuildContext context;
  String? title;
  String content;
  Function? yesPressed;
  Function? noPressed;

  OptionDialog({
    required this.context,
    this.title,
    required this.content,
    this.yesPressed,
    this.noPressed,
  });

  show() => showDialog(
    context: context,
    builder: (BuildContext dialogContext) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        icon: const Icon(
          Icons.warning,
          color: Colors.yellow,
        ),
        title: Text(
          title ?? "Perhatian",
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        content: Text(
          content,
          textAlign: TextAlign.center,
        ),
        actions: [
          TextButton(
            onPressed: () => RedirectBack(context: context, result: false).go(),
            child: const Text(
              "Tidak",
            ),
          ),
          TextButton(
            onPressed: () => RedirectBack(context: context, result: true).go(),
            child: const Text(
              "Ya",
            ),
          ),
        ],
      );
    },
  ).then((dialogResult) {
    if(dialogResult != null) {
      if(dialogResult == true) {
        if(yesPressed != null) {
          yesPressed!();
        }
      } else {
        if(noPressed != null) {
          noPressed!();
        }
      }
    }
  });
}

class LoadingDialog {
  BuildContext context;

  LoadingDialog({required this.context});

  show() => showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext dialogContext) {
      return PopScope(
        canPop: false,
        onPopInvoked: (pop) {
          if(pop) {
            return;
          }
        },
        child: AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              SizedBox(
                height: 15.0,
              ),
              Text(
                "Sedang memuat data, mohon tunggu...",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );
    },
  );
}