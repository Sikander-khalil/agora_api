import 'dart:convert';

import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class VideoCall extends StatefulWidget {


  const VideoCall({Key? key}) : super(key: key);

  @override
  State<VideoCall> createState() => _VideoCallState();
}

class _VideoCallState extends State<VideoCall> {


  final AgoraClient _client = AgoraClient(
      agoraConnectionData: AgoraConnectionData(
        appId: "c9c0443f4a7e4d76a16ac106bec20577",
        tempToken: "007eJxTYBBU552wVk566aqqB62XJa0VrZIt7/6RNFlxfbVi9p8IlmwFhmTLZAMTE+M0k0TzVJMUc7NEQ7PEZEMDs6TUZCMDU3Nz+d0vUxoCGRny65uYGBkgEMRnYShJLS5hYAAAokMdpA==",
        channelName: "test",
      ),
      enabledPermission: [Permission.camera, Permission.microphone],
    );
  @override
  Widget build(BuildContext context) {

      return Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              AgoraVideoViewer(client: _client),
              AgoraVideoButtons(client: _client),
            ],
          ),
        ),
      );

  }
}

