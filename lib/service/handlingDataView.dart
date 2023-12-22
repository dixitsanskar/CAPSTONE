


import 'package:flutter/material.dart';

import 'statusrequest.dart';



class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataView(
      {Key? key, required this.statusRequest, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? SizedBox(
            height: 120,
            child: Center(
              child: CircularProgressIndicator(color: Colors.black),
            ),
          )
        : statusRequest == StatusRequest.offlinefailure
            ? SizedBox(
                height: 120,
                child: Center(
                    child: Text(
                  "Offline Failure",
                  style: TextStyle(color: Theme.of(context).textTheme.headline1!.color!.withOpacity(.5),),
                )),
              )
            : statusRequest == StatusRequest.serverfailure
                ? SizedBox(
                    height: 120,
                    child: Center(
                        child: Text(
                      "Server Failure",
                      style: TextStyle(color: Theme.of(context).textTheme.headline1!.color!.withOpacity(.5),),
                    )),
                  )
                : statusRequest == StatusRequest.failure
                    ? SizedBox(
                        height: 120,
                        child: Center(
                            child: Text(
                          "No Data",
                          style: TextStyle(color:Theme.of(context).textTheme.headline1!.color!.withOpacity(.5),),
                        )),
                      )
                    : widget;
  }
}
