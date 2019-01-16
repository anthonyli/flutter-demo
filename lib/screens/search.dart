// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(
      builder: (context) {
        return new MaterialApp(
          home: new DemoPage(),
        );
      },
    );
  }
}

class DemoPage extends StatelessWidget {
  launchURL() {
    launch('http://isle.xiaoxizhu.com/app/user?sourcecode=test&adscode=test1');
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new RaisedButton(
          onPressed: launchURL,
          child: new Text('Show Flutter homepage'),
        ),
      ),
    );
  }
}
