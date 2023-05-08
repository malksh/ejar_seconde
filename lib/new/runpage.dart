import 'package:ejar/new/test.dart';
import 'package:flutter/material.dart';

class RunPage extends StatefulWidget {
  const RunPage({Key? key}) : super(key: key);

  @override
  State<RunPage> createState() => _RunPageState();
}

class _RunPageState extends State<RunPage> {
  List<TaskModel> tasks = [
    TaskModel(title: 'Flutter', subTitle: '', subtitle: ''),
    TaskModel(title: 'API', subTitle: '', subtitle: ''),
    TaskModel(title: 'PROVIDER', subTitle: '', subtitle: ''),
    TaskModel(title: 'HTTP', subTitle: "SUB http", subtitle: ''),
  ];

  List<TaskModel> completedTasks = [];
  

  int currentIndex = 0;

  get subTitle => null;
 
  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final title = TextEditingController();
    // final subTitle = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("First App")),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.done),
              title: const Text('Completed'),
              onTap: () {
                Navigator.pop(context); //////////////////////////
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                child: Container(
                  width: 50,
                  height: 300,
                  color: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        TextField(
                          controller: title,
                          decoration: InputDecoration(
                            hintText: 'Enter title',
                            errorText: title.text.isEmpty
                                ? 'Please enter a title'
                                : null,
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextField(
                          controller: subTitle,
                          decoration: InputDecoration(
                            hintText: 'Enter subtitle',
                            errorText: subTitle.text.isEmpty
                                ? 'Please enter a subtitle'
                                : null,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MaterialButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              color: Colors.red,
                              child: const Text("Cancel"),
                            ),
                            MaterialButton(
                              onPressed: () {
                                if (title.text.isEmpty ||
                                    subTitle.text.isEmpty) {
                                  return;
                                } else {
                                  setState(() {
                                    tasks.add(TaskModel(
                                      title: title.text,
                                      subTitle: subTitle.text,
                                      subtitle: '',
                                    ));
                                  });
                                }

                                Navigator.pop(context);
                              },
                              color: Colors.green,
                              child: const Text("Add"),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
      body: currentIndex == 0
          ? ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: InkWell(
                    child: const Icon(Icons.delete),
                    onTap: () {
                      setState(() {
                        tasks.remove(tasks[index]);
                      });
                    },
                  ),
                  title: Text(tasks[index].title),
                  subtitle: Text(tasks[index].subtitle),
                  trailing: Checkbox(
                    value: tasks[index].isDone,
                    onChanged: (value) {
                      setState(() {
                        tasks[index].isDone = !tasks[index].isDone;
                        if (tasks[index].isDone) {
                          completedTasks.add(tasks[index]);
                          tasks.removeAt(index);
                        }
                      });
                    },
                  ),
                );
              },
            )
          : ListView.builder(
              itemCount: completedTasks.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: InkWell(
                    child: const Icon(Icons.delete),
                    onTap: () {
                      setState(() {
                        completedTasks.remove(completedTasks[index]);
                      });
                    },
                  ),
                  title: Text(completedTasks[index].title),
                  subtitle: Text(completedTasks[index].subtitle),
                  trailing: Checkbox(
                    value: completedTasks[index].isDone,
                    onChanged: (value) {
                      setState(() {
                        completedTasks[index].isDone =
                            !completedTasks[index].isDone;
                        if (!completedTasks[index].isDone) {
                          tasks.add(completedTasks[index]);
                          completedTasks.removeAt(index);
                        }
                      });
                    },
                  ),
                );
              },
            ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.done),
            label: 'Completed',
          ),
        ],
        currentIndex: currentIndex,
        onTap: _onItemTapped,
      ),
    );
  } //end of build
}
