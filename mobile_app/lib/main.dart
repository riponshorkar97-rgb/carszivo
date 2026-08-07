import 'features/story/data/
  story_dummy_data.dart';
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
