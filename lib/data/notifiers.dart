//ValueNotifier : stores the data;
//ValueListenableBuilder : listen to the data ( dont need the setsate);

import 'package:flutter/material.dart';

ValueNotifier<int> selectPageNotifier = ValueNotifier(0);
ValueNotifier<bool> darkModeNotifier = ValueNotifier(false);
