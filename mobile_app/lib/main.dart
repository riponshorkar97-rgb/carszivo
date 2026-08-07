import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'app.dart';
import 'firebase_options.dart';

import 'features/story/data/story_dummy_data.dart';


Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();


  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );


  StoryDummyData.loadStories();


  runApp(
    const CarszivoApp(),
  );
}
