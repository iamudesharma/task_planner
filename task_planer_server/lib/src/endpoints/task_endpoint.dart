import 'package:logger/logger.dart';
import 'package:serverpod/serverpod.dart';
import 'package:task_planer_server/src/generated/task_class.dart';

// This is an example endpoint of your server. It's best practice to use the
// `Endpoint` ending of the class name, but it will be removed when accessing
// the endpoint from the client. I.e., this endpoint can be accessed through
// `client.example` on the client side.

// After adding or modifying an endpoint, you will need to run
// `serverpod generate` to update the server and client code.
class TaskEndpoint extends Endpoint {
  Logger _logger = Logger();
  // You create methods in your endpoint which are accessible from the client by
  // creating a public method with `Session` as its first parameter. Supported
  // parameter types are `bool`, `int`, `double`, `String`, `DateTime`, and any
  // objects that are generated from your `protocol` directory. The methods
  // should return a typed future; the same types as for the parameters are
  // supported. The `session` object provides access to the database, logging,
  // passwords, and information about the request being made to the server.
  Future<void> addTask(Session session, Task task) async {
    await Task.insert(session, task).then((value) {
      _logger.i("Task added ${task.id.toString()}");
      // session..info('Added task ${task.id}');
    }).catchError((e) {
      _logger.i("Some went some${e}");
    });

    Future<List<Task>?> getAllTask(
      Session session,
    ) async {
      try {
        List<Task> task = await Task.find(session);
        return task;
      } catch (e) {
        _logger.i("Some went some${e}");
        return [];
      }
    }

    Future<Task?> getTaskById(Session session, int id) async {
      try {
        Task? task = await Task.findById(session, id);
        return task;
      } catch (e) {
        _logger.i("Some went some${e}");
        return null;
      }
    }

    Future<bool> deleteTheTask(Session session, Task task) async {
      try {
        final _task = await Task.deleteRow(session, task);
        return _task;
      } catch (e) {
        _logger.i("Some went some${e}");
        return false;
      }
    }

    Future<bool> updateTask(Session session, Task task) async {
      try {
        final _task = await Task.update(session, task);
        return _task;
      } catch (e) {
        _logger.i("Some went some${e}");
        return false;
      }
    }
  }
}
