import 'package:tic_toe_toe/linked_list/linked_list.dart';

Node<T>? findMiddleNode<T>(Node<T>? head) {
  Node<T>? slow = head;
  Node<T>? fast = head;

  while (fast != null && fast.next != null) {
    slow = slow!.next;
    fast = fast.next!.next;
  }

  return slow;
}
