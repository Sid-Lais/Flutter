import 'package:flutter/material.dart';
import 'menu-drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task Manager',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const Tasklist(),
    );
  }
}

class Tasklist extends StatelessWidget {
  const Tasklist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tasks'),
        backgroundColor: const Color.fromRGBO(76, 175, 80, 1),
      ),
      drawer: const MenuDrawer(),
      backgroundColor: const Color.fromARGB(255, 183, 237, 186),
      body: ListView(
        children: const [
          WatchlistItemCompact(
            title: 'Task 1',
            priority: 'Urgent',
            completeBy: '20-03-2024',
          ),
          WatchlistItemCompact(
            title: 'Task 2',
            priority: 'Important',
            completeBy: '15-04-2024',
          ),
          WatchlistItemCompact(
            title: 'Task 3',
            priority: 'Not Important',
            completeBy: '5-06-2024',
          ),
        ]
            .map((widget) => Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 16.0),
                  child: Card(
                    elevation: 4,
                    child: widget,
                  ),
                ))
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showTaskInputForm(context);
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(
            255, 8, 8, 8), // Set background color of the bottom navigation bar
        selectedItemColor: Colors.black, // Set color of the selected item
        unselectedItemColor: Colors.black, // Set color of the unselected items
        selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold), // TextStyle for selected label
        unselectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.normal), // TextStyle for unselected labels
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.checklist),
            label: 'All',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Starred',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explicit_sharp),
            label: 'Emergency',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.house),
            label: 'My Day',
          ),
        ],
      ),
    );
  }

  void _showTaskInputForm(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Add Task'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Title',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Priority',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Complete By',
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle form submission (not implemented)
                Navigator.of(context).pop();
              },
              child: const Text('Add'),
            ),
          ],
        );
      },
    );
  }
}

class WatchlistItemCompact extends StatelessWidget {
  final String title;
  final String priority;
  final String completeBy;

  const WatchlistItemCompact({
    super.key,
    required this.title,
    required this.priority,
    required this.completeBy,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text('Priority: $priority\nComplete By: $completeBy'),
      onTap: () {
        _showTaskDetailsDialog(context);
      },
    );
  }

  void _showTaskDetailsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Task Details'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Title: $title'),
              const SizedBox(height: 8),
              Text('Priority: $priority'),
              const SizedBox(height: 8),
              Text('Complete By: $completeBy'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
