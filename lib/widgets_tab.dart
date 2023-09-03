import 'package:flutter/material.dart';

class Todo {
  int id;
  String title;
  String description;
  bool isComplete;

  Todo(
      {required this.id,
      required this.title,
      required this.description,
      required this.isComplete});
}

List<Todo> _sampleToDo = [
  Todo(
      id: 1,
      title: "Flutter",
      description: "Learn Flutter themes",
      isComplete: false),
  Todo(
      id: 2,
      title: "Eggs",
      description: "Buy chicken eggs for breakfast",
      isComplete: false),
  Todo(
      id: 3,
      title: "Chicken",
      description: "Buy Roast Chicken for the party",
      isComplete: false),
  Todo(
      id: 4,
      title: "Beer",
      description: "Buy 3 cartons of beer for the party",
      isComplete: false),
  Todo(
      id: 5,
      title: "Snacks",
      description: "Finger food to go along with beer",
      isComplete: false),
];

class WidgetsTab extends StatelessWidget {
  const WidgetsTab({super.key});

  Widget _buildTodoList(BuildContext context) {
    return ListView.builder(
      itemCount: _sampleToDo.length,
      itemBuilder: (context, index) {
        Todo item = _sampleToDo[index];
        return ListTile(
          title: Text(item.title),
          subtitle: Text(item.description),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text("List View, default styled..."),
          Expanded(flex: 2, child: _buildTodoList(context)),
          const Card(
            margin: EdgeInsets.all(10),
            elevation: 10,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.alarm, size: 45),
                  title: Text("Hello, this is a tile"),
                  subtitle: Text("This tile is default styled"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
