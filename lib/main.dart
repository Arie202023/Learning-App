import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  const FirebaseOptions firebaseOpt = FirebaseOptions(
  apiKey: "AIzaSyCOoIu0S-IR6sIuLr69hEo8U6bg0ZmRQbs",
  authDomain: "learningapp-9c188.firebaseapp.com",
  projectId: "learningapp-9c188",
  storageBucket: "learningapp-9c188.firebasestorage.app",
  messagingSenderId: "158683047643",
  appId: "1:158683047643:web:fe1af0c439e50e2a594efe"
  );
  await Firebase.initializeApp(options: firebaseOpt);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learning App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}

final List<Lesson> lessons = [
  Lesson(
    title: 'Lesson 1: Introduction to Flutter',
    contents: [
      'Flutter is an open-source UI software development kit created by Google.',
      'It is used to develop cross-platform applications from a single codebase.',
      'Flutter uses the Dart programming language.',
      'Flutter provides a rich set of pre-designed widgets for building UI components.',
      'Flutter allows hot reload for quick iterations during development.',
      'Flutter applications can run on Android, iOS, Web, and Desktop.',
      'The Flutter community actively contributes to a wide range of packages and plugins.'
    ],
    quiz: [
      QuizQuestion(question: 'Who created Flutter?', answers: ['Google', 'Facebook', 'Microsoft'], correctAnswer: 'Google'),
      QuizQuestion(question: 'Is Flutter open-source?', answers: ['Yes', 'No'], correctAnswer: 'Yes'),
      QuizQuestion(question: 'Which programming language does Flutter use?', answers: ['Dart', 'Java', 'Kotlin'], correctAnswer: 'Dart'),
      QuizQuestion(question: 'Does Flutter support hot reload?', answers: ['Yes', 'No'], correctAnswer: 'Yes'),
      QuizQuestion(question: 'Can Flutter apps run on desktops?', answers: ['Yes', 'No'], correctAnswer: 'Yes'),
    ],
  ),
  Lesson(
    title: 'Lesson 2: Dart Basics',
    contents: [
      'Dart is a client-optimized language for fast apps on any platform.',
      'It supports both ahead-of-time (AOT) and just-in-time (JIT) compilation.',
      'Dart is used extensively in Flutter development.',
      'Dart syntax is similar to other popular programming languages, making it easier to learn.',
      'Dart has built-in support for asynchronous programming using Future and Stream classes.',
      'Dart allows optional typing, providing flexibility in variable declarations.',
      'Dart features strong support for functional programming paradigms like higher-order functions.'
    ],
    quiz: [
      QuizQuestion(question: 'What is Dart?', answers: ['A programming language', 'A game', 'A framework'], correctAnswer: 'A programming language'),
      QuizQuestion(question: 'Is Dart used for Flutter?', answers: ['Yes', 'No'], correctAnswer: 'Yes'),
      QuizQuestion(question: 'What compilation methods does Dart support?', answers: ['AOT and JIT', 'Only JIT', 'Only AOT'], correctAnswer: 'AOT and JIT'),
      QuizQuestion(question: 'Does Dart support asynchronous programming?', answers: ['Yes', 'No'], correctAnswer: 'Yes'),
      QuizQuestion(question: 'Is Darts syntax similar to other programming languages?', answers: ['Yes', 'No'], correctAnswer: 'Yes'),
    ],
  ),
  Lesson(
    title: 'Lesson 3: Flutter Widgets',
    contents: [
      'Widgets are the basic building blocks of a Flutter application.',
      'They describe what their view should look like given their current configuration and state.',
      'Flutter provides two types of widgets: Stateless and Stateful.',
      'Stateless widgets are immutable and do not require state changes.',
      'Stateful widgets maintain their state and can rebuild dynamically when their state changes.',
      'Widgets can be composed to create complex user interfaces.',
      'Every widget in Flutter is a subclass of the Widget class.'
    ],
    quiz: [
      QuizQuestion(question: 'What are Flutter widgets?', answers: ['Building blocks', 'Databases', 'Servers'], correctAnswer: 'Building blocks'),
      QuizQuestion(question: 'Do widgets define the apps UI?', answers: ['Yes', 'No'], correctAnswer: 'Yes'),
      QuizQuestion(question: 'What are the two types of widgets in Flutter?', answers: ['Stateless and Stateful', 'Static and Dynamic'], correctAnswer: 'Stateless and Stateful'),
      QuizQuestion(question: 'Can Stateless widgets rebuild dynamically?', answers: ['No', 'Yes'], correctAnswer: 'No'),
      QuizQuestion(question: 'Are all widgets in Flutter subclasses of the Widget class?', answers: ['Yes', 'No'], correctAnswer: 'Yes'),
    ],
  ),
  Lesson(
    title: 'Lesson 4: Layouts in Flutter',
    contents: [
      'Layouts are used to organize widgets in a structured manner.',
      'Commonly used layout widgets include Row, Column, Stack, and GridView.',
      'Flutter provides responsive design capabilities using layout widgets.',
      'The Flex and Expanded widgets allow flexible allocation of space in a layout.',
      'Padding and Margin properties can be added to widgets for better spacing.',
      'The Align widget is used to align child widgets within their parent.',
      'Custom layouts can be created using the CustomMultiChildLayout widget.'
    ],
    quiz: [
      QuizQuestion(question: 'What is a layout in Flutter?', answers: ['Organizing widgets', 'Database management'], correctAnswer: 'Organizing widgets'),
      QuizQuestion(question: 'Which widget creates vertical alignment?', answers: ['Row', 'Column', 'Stack'], correctAnswer: 'Column'),
      QuizQuestion(question: 'What is the role of the Padding widget?', answers: ['Adds spacing', 'Aligns widgets', 'Handles gestures'], correctAnswer: 'Adds spacing'),
      QuizQuestion(question: 'Does Flex allow flexible space allocation?', answers: ['Yes', 'No'], correctAnswer: 'Yes'),
      QuizQuestion(question: 'Which widget supports custom layouts?', answers: ['CustomMultiChildLayout', 'Row'], correctAnswer: 'CustomMultiChildLayout'),
    ],
  ),
    Lesson(
    title: 'Lesson 5: Navigation in Flutter',
    contents: [
      'Navigation in Flutter allows transitioning between screens.',
      'The Navigator widget is used to manage a stack of routes.',
      'You can pass data between screens using the Navigator.',
      'Named routes simplify navigation for predefined paths.',
      'Flutter also supports deep linking for opening specific pages from external links.'
    ],
    quiz: [
      QuizQuestion(question: 'Which widget is used for navigation?', answers: ['Navigator', 'Row', 'Column'], correctAnswer: 'Navigator'),
      QuizQuestion(question: 'Can data be passed during navigation?', answers: ['Yes', 'No'], correctAnswer: 'Yes'),
    ],
  ),
  Lesson(
    title: 'Lesson 6: State Management',
    contents: [
      'State management is essential for handling app state efficiently.',
      'Flutter supports various state management solutions like Provider, Riverpod, and Bloc.',
      'The built-in setState method is used for simple state updates.',
      'InheritedWidget provides a way to propagate state down the widget tree.',
      'Advanced solutions like Redux and MobX enable centralized state management.'
    ],
    quiz: [
      QuizQuestion(question: 'What is state management?', answers: ['Managing app state', 'Designing UI'], correctAnswer: 'Managing app state'),
      QuizQuestion(question: 'Which state management solution is built-in?', answers: ['setState', 'Riverpod', 'Redux'], correctAnswer: 'setState'),
    ],
  ),
  Lesson(
    title: 'Lesson 7: Animations in Flutter',
    contents: [
      'Animations make UI transitions smooth and engaging.',
      'Flutter supports animations using widgets like AnimatedContainer and AnimatedOpacity.',
      'Custom animations can be created using the AnimationController class.',
      'Hero animations provide seamless transitions between screens for shared elements.',
      'Flutter also offers explicit animations using Animation and Tween classes.'
    ],
    quiz: [
      QuizQuestion(question: 'Are animations supported in Flutter?', answers: ['Yes', 'No'], correctAnswer: 'Yes'),
      QuizQuestion(question: 'Which widget provides implicit animations?', answers: ['AnimatedContainer', 'Container'], correctAnswer: 'AnimatedContainer'),
    ],
  ),
  Lesson(
    title: 'Lesson 8: Networking in Flutter',
    contents: [
      'Networking in Flutter is used to connect with external APIs.',
      'The http package is commonly used for making HTTP requests.',
      'Data is often exchanged in JSON format.',
      'The Dio package provides advanced networking features like interceptors.',
      'Asynchronous programming is essential for managing network calls in Flutter.'
    ],
    quiz: [
      QuizQuestion(question: 'What is networking in Flutter?', answers: ['API communication', 'Layout design'], correctAnswer: 'API communication'),
      QuizQuestion(question: 'Which package is used for HTTP requests?', answers: ['http', 'provider'], correctAnswer: 'http'),
    ],
  ),
  Lesson(
    title: 'Lesson 9: Handling User Input',
    contents: [
      'Flutter provides tools like TextField and Form for user input.',
      'TextEditingController helps to manage and retrieve the input values.',
      'Validation is supported through Form and FormField widgets.',
      'GestureDetector captures custom user interactions like tapping or swiping.',
      'You can customize the keyboard type and behavior for TextField inputs.'
    ],
    quiz: [
      QuizQuestion(question: 'What is used for text input?', answers: ['TextField', 'ListView'], correctAnswer: 'TextField'),
      QuizQuestion(question: 'Can Forms validate input?', answers: ['Yes', 'No'], correctAnswer: 'Yes'),
      QuizQuestion(question: 'Does Flutter support custom input widgets?', answers: ['Yes', 'No'], correctAnswer: 'Yes'),
    ],
  ),
  Lesson(
    title: 'Lesson 10: Using Firebase',
    contents: [
      'Firebase integration adds backend features like authentication and databases.',
      'Firebase Authentication supports email, Google, and Facebook login.',
      'Cloud Firestore provides a real-time database for storing app data.',
      'Firebase Cloud Messaging (FCM) enables push notifications.',
      'Firebase Crashlytics helps monitor and fix app crashes in real time.'
    ],
    quiz: [
      QuizQuestion(question: 'What is Firebase used for?', answers: ['Backend services', 'Frontend design'], correctAnswer: 'Backend services'),
      QuizQuestion(question: 'Is Firebase free to use?', answers: ['Yes', 'No'], correctAnswer: 'Yes'),
      QuizQuestion(question: 'Can Firebase handle push notifications?', answers: ['Yes', 'No'], correctAnswer: 'Yes'),
    ],
  ),
  Lesson(
    title: 'Lesson 11: Publishing Flutter Apps',
    contents: [
      'Publishing lets you distribute your app on app stores.',
      'Android apps are published on the Google Play Store.',
      'iOS apps are distributed via the Apple App Store.',
      'Flutter apps can also be published on web platforms.',
      'A developer account is required for publishing apps on official stores.'
    ],
    quiz: [
      QuizQuestion(question: 'Which platform is used for Android app publishing?', answers: ['Play Store', 'App Store'], correctAnswer: 'Play Store'),
      QuizQuestion(question: 'Do you need a developer account to publish?', answers: ['Yes', 'No'], correctAnswer: 'Yes'),
      QuizQuestion(question: 'Can apps be distributed privately?', answers: ['Yes', 'No'], correctAnswer: 'Yes'),
    ],
  ),
  Lesson(
    title: 'Lesson 12: Error Handling in Flutter',
    contents: [
      'Error handling prevents crashes and improves user experience.',
      'The try-catch block is used for handling exceptions in Dart.',
      'FlutterError.onError captures unhandled Flutter framework errors.',
      'The Future API provides error handling for asynchronous operations.',
      'Proper error messages improve debugging and user experience.'
    ],
    quiz: [
      QuizQuestion(question: 'What does error handling do?', answers: ['Prevents crashes', 'Improves layout'], correctAnswer: 'Prevents crashes'),
      QuizQuestion(question: 'Which class handles exceptions?', answers: ['try-catch', 'FutureBuilder'], correctAnswer: 'try-catch'),
      QuizQuestion(question: 'Are errors logged in Debug mode?', answers: ['Yes', 'No'], correctAnswer: 'Yes'),
    ],
  ),
  Lesson(
    title: 'Lesson 13: Accessibility Features',
    contents: [
      'Flutter supports accessibility for a wider audience.',
      'Semantic widgets provide meaningful descriptions for screen readers.',
      'Flutter integrates well with platform-specific accessibility services.',
      'Custom accessibility actions can be defined for interactive widgets.',
      'Ensuring proper color contrast improves accessibility for visually impaired users.'
    ],
    quiz: [
      QuizQuestion(question: 'What is accessibility?', answers: ['Inclusive design', 'App speed'], correctAnswer: 'Inclusive design'),
      QuizQuestion(question: 'Does Flutter support screen readers?', answers: ['Yes', 'No'], correctAnswer: 'Yes'),
      QuizQuestion(question: 'Can you customize accessibility features?', answers: ['Yes', 'No'], correctAnswer: 'Yes'),
    ],
  ),
  Lesson(
    title: 'Lesson 14: Flutter Themes',
    contents: [
      'Themes allow consistent styling throughout the app.',
      'The ThemeData class is used to define app-wide styles.',
      'Dark and light themes can be toggled dynamically in Flutter.',
      'MaterialApp and CupertinoApp support themes out of the box.',
      'Custom themes can be defined for specific widgets or sections.'
    ],
    quiz: [
      QuizQuestion(question: 'What does a theme define?', answers: ['App styling', 'App logic'], correctAnswer: 'App styling'),
      QuizQuestion(question: 'Can themes be customized?', answers: ['Yes', 'No'], correctAnswer: 'Yes'),
      QuizQuestion(question: 'Does MaterialApp support themes?', answers: ['Yes', 'No'], correctAnswer: 'Yes'),
    ],
  ),
  Lesson(
    title: 'Lesson 15: Testing Flutter Apps',
    contents: [
      'Testing ensures your app is functional and bug-free.',
      'Flutter supports unit, widget, and integration testing.',
      'The test package is used for writing unit tests in Dart.',
      'Widget testing verifies the UI behavior of individual widgets.',
      'Integration testing simulates user interactions across the app.'
    ],
    quiz: [
      QuizQuestion(question: 'What is testing?', answers: ['Ensuring app quality', 'Improving layout'], correctAnswer: 'Ensuring app quality'),
      QuizQuestion(question: 'Does Flutter support automated tests?', answers: ['Yes', 'No'], correctAnswer: 'Yes'),
      QuizQuestion(question: 'What tool is used for unit testing?', answers: ['test package', 'http package'], correctAnswer: 'test package'),
    ],
  ),
];

  // Continue adding detailed content to the remaining lessons similarly...

class Lesson {
  final String title;
  final List<String> contents;
  final List<QuizQuestion> quiz;
  bool completed;
  double progress;

  Lesson({
    required this.title,
    required this.contents,
    required this.quiz,
    this.completed = false,
    this.progress = 0.0,
  });
}

class QuizQuestion {
  final String question;
  final List<String> answers;
  final String correctAnswer;

  QuizQuestion({
    required this.question,
    required this.answers,
    required this.correctAnswer,
  });
}


class FirebaseAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> login(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (e) {
      throw Exception('Login failed: $e');
    }
  }

  Future<void> signUp(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      throw Exception('Sign-up failed: $e');
    }
  }

  Future<void> resetPassword(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
    } catch (e) {
      throw Exception('Password reset failed: $e');
    }
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FirebaseAuthService _authService = FirebaseAuthService();

  void _login() async {
    try {
      final email = _emailController.text.trim();
      final password = _passwordController.text.trim();

      if (email.isNotEmpty && password.isNotEmpty) {
        await _authService.login(email, password);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const LessonsScreen()),
        );
      } else {
        _showErrorDialog('Please enter a valid email and password.');
      }
    } catch (e) {
      _showErrorDialog(e.toString());
    }
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Error'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Color.fromARGB(255, 224, 230, 233)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, foregroundColor: Colors.blue),
                  onPressed: _login,
                  child: const Text('Login'),
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUpScreen()),
                    );
                  },
                  child: const Text('Sign Up'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ResetPasswordScreen()),
                    );
                  },
                  child: const Text('Forgot Password?'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final FirebaseAuthService _authService = FirebaseAuthService();

  void _signUp() async {
    try {
      final email = _emailController.text.trim();
      final password = _passwordController.text.trim();
      final confirmPassword = _confirmPasswordController.text.trim();

      if (password == confirmPassword) {
        await _authService.signUp(email, password);
        Navigator.pop(context);
      } else {
        _showErrorDialog('Passwords do not match.');
      }
    } catch (e) {
      _showErrorDialog(e.toString());
    }
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Error'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign Up')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _confirmPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _signUp,
              child: const Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final TextEditingController _emailController = TextEditingController();
  final FirebaseAuthService _authService = FirebaseAuthService();

  @override
  void dispose() {
    _emailController.dispose(); // Dispose the controller to free up resources.
    super.dispose();
  }

  void _resetPassword() async {
    try {
      final email = _emailController.text.trim();
      await _authService.resetPassword(email);
      _showMessageDialog('Password reset email sent. Check your inbox.');
    } catch (e) {
      _showMessageDialog(e.toString());
    }
  }

  void _showMessageDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Message'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Reset Password')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _resetPassword,
              child: const Text('Send Reset Email'),
            ),
          ],
        ),
      ),
    );
  }
}

class LessonsScreen extends StatefulWidget {
  const LessonsScreen({super.key});

  @override
  _LessonsScreenState createState() => _LessonsScreenState();
}

class _LessonsScreenState extends State<LessonsScreen> {
   final FirebaseAuthService _authService = FirebaseAuthService();

  void _logout() async {
    try {
      await FirebaseAuth.instance.signOut();
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
        (route) => false,
      );
    } catch (e) {
      _showErrorDialog('Logout failed: $e');
    }
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Error'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lessons'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: _logout,
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: lessons.length,
        itemBuilder: (context, index) {
          final lesson = lessons[index];
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              title: Text(lesson.title),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Progress: ${(lesson.progress * 100).toStringAsFixed(1)}%'),
                  LinearProgressIndicator(
                    value: lesson.progress,
                    color: Colors.blue,
                    backgroundColor: Colors.blue.withOpacity(0.2),
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LessonDetailsScreen(lesson: lesson),
                  ),
                ).then((_) {
                  setState(() {}); // Update screen after coming back
                });
              },
            ),
          );
        },
      ),
    );
  }
}

class LessonDetailsScreen extends StatelessWidget {
  final Lesson lesson;

  const LessonDetailsScreen({required this.lesson, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(lesson.title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Progress: ${(lesson.progress * 100).toStringAsFixed(1)}%',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            LinearProgressIndicator(
              value: lesson.progress,
              color: Colors.blue,
              backgroundColor: Colors.blue.withOpacity(0.2),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: lesson.contents.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      '${index + 1}. ${lesson.contents[index]}',
                      style: const TextStyle(fontSize: 16),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuizScreen(quiz: lesson.quiz, lesson: lesson),
                  ),
                ).then((_) {
                  if (lesson.progress == 1.0) lesson.completed = true;
                });
              },
              child: const Text("Take Quiz"),
            ),
          ],
        ),
      ),
    );
  }
}

class QuizScreen extends StatefulWidget {
  final List<QuizQuestion> quiz;
  final Lesson lesson;

  const QuizScreen({required this.quiz, required this.lesson, super.key});

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _currentQuestionIndex = 0;
  int _score = 0;

  void _answerQuestion(String answer) {
    if (answer == widget.quiz[_currentQuestionIndex].correctAnswer) {
      setState(() {
        _score++;
      });
    }
    if (_currentQuestionIndex < widget.quiz.length - 1) {
      setState(() {
        _currentQuestionIndex++;
      });
    } else {
      _showQuizResult();
    }
  }

  void _showQuizResult() {
    setState(() {
      widget.lesson.progress = _score / widget.quiz.length;
      widget.lesson.completed = widget.lesson.progress == 1.0;
    });

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Quiz Completed"),
        content: Text(
            "Your score is $_score/${widget.quiz.length}.\nProgress updated!"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("OK"),
          ),
        ],
      ),
    ).then((_) => Navigator.pop(context));
  }

  @override
  Widget build(BuildContext context) {
    final question = widget.quiz[_currentQuestionIndex];
    return Scaffold(
      appBar: AppBar(title: const Text('Quiz')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                question.question,
                style: const TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              ...question.answers.map((answer) {
                return Column(
                  children: [
                    ElevatedButton(
                      onPressed: () => _answerQuestion(answer),
                      child: Text(answer),
                    ),
                    const SizedBox(height: 10),
                  ],
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}


class FlashcardScreen extends StatefulWidget {
  final Lesson lesson;

  const FlashcardScreen({required this.lesson, super.key});

  @override
  _FlashcardScreenState createState() => _FlashcardScreenState();
}

class _FlashcardScreenState extends State<FlashcardScreen> {
  int _currentCardIndex = 0;
  int _score = 0;

  @override
  Widget build(BuildContext context) {
    final totalCards = widget.lesson.contents.length + widget.lesson.quiz.length;

    return Scaffold(
      appBar: AppBar(title: Text(widget.lesson.title)),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  _currentCardIndex = index;
                });
              },
              itemCount: totalCards,
              itemBuilder: (context, index) {
                if (index < widget.lesson.contents.length) {
                  // Show lesson content
                  return _buildLessonCard(widget.lesson.contents[index]);
                } else {
                  // Show quiz card
                  final quizIndex = index - widget.lesson.contents.length;
                  return _buildQuizCard(widget.lesson.quiz[quizIndex]);
                }
              },
            ),
          ),
          _buildProgressIndicator(totalCards),
        ],
      ),
    );
  }

  Widget _buildLessonCard(String content) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        elevation: 4,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              content,
              style: const TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildQuizCard(QuizQuestion question) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        elevation: 4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                question.question,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            ...question.answers.map((answer) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                child: ElevatedButton(
                  onPressed: () {
                    _answerQuestion(answer, question.correctAnswer);
                  },
                  child: Text(answer),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }

  void _answerQuestion(String selectedAnswer, String correctAnswer) {
    if (selectedAnswer == correctAnswer) {
      setState(() {
        _score++;
      });
    }

    if (_currentCardIndex < widget.lesson.contents.length + widget.lesson.quiz.length - 1) {
      setState(() {
        _currentCardIndex++;
      });
    } else {
      _showCompletionDialog();
    }
  }

  void _showCompletionDialog() {
    setState(() {
      widget.lesson.progress = _score / widget.lesson.quiz.length;
      widget.lesson.completed = widget.lesson.progress == 1.0;
    });

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Lesson Completed'),
        content: Text('You completed the quiz with a score of $_score/${widget.lesson.quiz.length}.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context);
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  Widget _buildProgressIndicator(int totalCards) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: LinearProgressIndicator(
        value: (_currentCardIndex + 1) / totalCards,
        color: Colors.blue,
        backgroundColor: Colors.blue.withOpacity(0.2),
      ),
    );
  }
}
