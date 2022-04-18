
import 'package:flutter/material.dart';

class model
{

  mediaQ(BuildContext context)
  {
    double theight = MediaQuery.of(context).size.height;
    double twidth = MediaQuery.of(context).size.width;

    double appbarheight = kToolbarHeight;
    double statusbarheight = MediaQuery.of(context).padding.top;
    double navbarheight = MediaQuery.of(context).padding.bottom;

  }
}