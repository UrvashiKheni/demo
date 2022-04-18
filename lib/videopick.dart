import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class videopick extends StatefulWidget {
  const videopick({Key? key}) : super(key: key);
  @override
  _videopickState createState() => _videopickState();
}

class _videopickState extends State<videopick> {

  final ImagePicker _picker = ImagePicker();
  VideoPlayerController? _controller;

  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () async {
                final XFile? image = await _picker.pickVideo(source: ImageSource.gallery);

                _controller = VideoPlayerController.file(File(image!.path));
                await _controller!.initialize();
                await _controller!.play();

                status = true;
                setState(() {});
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: status ? Center(
        child: _controller!.value.isInitialized
            ? AspectRatio(
          aspectRatio: _controller!.value.aspectRatio,
          child: VideoPlayer(_controller!),
        )
            : Container(),
      ) : Center(child: Text("No Video Found")),
      floatingActionButton: status ? FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller!.value.isPlaying
                ? _controller!.pause()
                : _controller!.play();
          });
        },
        child: Icon(
          _controller!.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ) : FloatingActionButton(onPressed: () {

      },),
    );
  }
}
