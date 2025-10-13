import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/task.dart';
import '../services/notion_service.dart';
import '../widgets/task_card.dart';

/// Provider for the Notion service instance.
final notionServiceProvider = Provider<NotionService>((ref) {
  throw UnimplementedError('NotionService must be overridden');
});

/// Provider for the task list.
final tasksProvider = FutureProvider<List<Task>>((ref) async {
  final service = ref.watch(notionServiceProvider);
  return service.fetchTasks();
});

/// The home screen displaying the task list.
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tasksAsync = ref.watch(tasksProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Notion Tasks'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: tasksAsync.when(
        data: (tasks) {
          if (tasks.isEmpty) {
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.check_circle_outline, size: 64, color: Colors.grey),
                  SizedBox(height: 16),
                  Text(
                    'No tasks yet!',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Tap + to create your first task',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            );
          }

          return RefreshIndicator(
            onRefresh: () async {
              ref.invalidate(tasksProvider);
            },
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                final task = tasks[index];
                return TaskCard(
                  task: task,
                  onTap: () => _showTaskDetail(context, task),
                  onCheckboxChanged: (value) {
                    if (value != null) {
                      _updateTaskStatus(ref, task.id, value);
                    }
                  },
                  onDelete: () => _deleteTask(ref, context, task.id),
                );
              },
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline, size: 64, color: Colors.red),
              const SizedBox(height: 16),
              Text(
                'Error: ${error.toString()}',
                style: const TextStyle(color: Colors.red),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => ref.invalidate(tasksProvider),
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showCreateTaskDialog(context, ref),
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showTaskDetail(BuildContext context, Task task) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(task.title),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (task.description != null) ...[
              const Text(
                'Description:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(task.description!),
              const SizedBox(height: 16),
            ],
            Row(
              children: [
                const Text(
                  'Status: ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(task.isCompleted ? 'Completed' : 'Pending'),
              ],
            ),
            if (task.dueDate != null) ...[
              const SizedBox(height: 8),
              Row(
                children: [
                  const Text(
                    'Due Date: ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(task.dueDate.toString().split(' ')[0]),
                ],
              ),
            ],
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }

  void _showCreateTaskDialog(BuildContext context, WidgetRef ref) {
    final titleController = TextEditingController();
    final descriptionController = TextEditingController();
    DateTime? selectedDate;

    showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setState) => AlertDialog(
          title: const Text('Create New Task'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: titleController,
                  decoration: const InputDecoration(
                    labelText: 'Title',
                    border: OutlineInputBorder(),
                  ),
                  autofocus: true,
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: descriptionController,
                  decoration: const InputDecoration(
                    labelText: 'Description (optional)',
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 3,
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Text(
                      selectedDate == null
                          ? 'No due date'
                          : 'Due: ${selectedDate.toString().split(' ')[0]}',
                    ),
                    const Spacer(),
                    TextButton.icon(
                      onPressed: () async {
                        final date = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime.now().add(
                            const Duration(days: 365),
                          ),
                        );
                        if (date != null) {
                          setState(() => selectedDate = date);
                        }
                      },
                      icon: const Icon(Icons.calendar_today),
                      label: const Text('Pick Date'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                if (titleController.text.isNotEmpty) {
                  _createTask(
                    ref,
                    titleController.text,
                    descriptionController.text.isEmpty
                        ? null
                        : descriptionController.text,
                    selectedDate,
                  );
                  Navigator.pop(context);
                }
              },
              child: const Text('Create'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _createTask(
    WidgetRef ref,
    String title,
    String? description,
    DateTime? dueDate,
  ) async {
    try {
      final service = ref.read(notionServiceProvider);
      await service.createTask(
        title: title,
        description: description,
        dueDate: dueDate,
      );
      ref.invalidate(tasksProvider);
    } catch (e) {
      // Error handling could be improved with a snackbar
      debugPrint('Error creating task: $e');
    }
  }

  Future<void> _updateTaskStatus(
    WidgetRef ref,
    String taskId,
    bool isCompleted,
  ) async {
    try {
      final service = ref.read(notionServiceProvider);
      await service.updateTaskStatus(
        taskId: taskId,
        isCompleted: isCompleted,
      );
      ref.invalidate(tasksProvider);
    } catch (e) {
      debugPrint('Error updating task: $e');
    }
  }

  Future<void> _deleteTask(
    WidgetRef ref,
    BuildContext context,
    String taskId,
  ) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Task'),
        content: const Text('Are you sure you want to delete this task?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context, true),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: const Text('Delete'),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      try {
        final service = ref.read(notionServiceProvider);
        await service.deleteTask(taskId);
        ref.invalidate(tasksProvider);
      } catch (e) {
        debugPrint('Error deleting task: $e');
      }
    }
  }
}
