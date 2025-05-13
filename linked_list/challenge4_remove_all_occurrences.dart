import 'package:tic_toe_toe/linked_list/linked_list.dart';

Node<T>? removeAllOccurrences<T>(Node<T>? head, T value) {
  while (head != null && head.value == value) {
    head = head.next;
  }

  Node<T>? current = head;

  while (current != null && current.next != null) {
    if (current.next!.value == value) {
      current.next = current.next!.next;
    } else {
      current = current.next;
    }
  }

  return head;
}
