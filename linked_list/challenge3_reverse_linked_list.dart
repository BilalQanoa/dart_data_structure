import 'package:tic_toe_toe/linked_list/linked_list.dart';

Node<T>? reverseList<T>(Node<T>? head) {
  Node<T>? previous;
  Node<T>? current = head;

  while (current != null) {
    Node<T>? nextNode = current.next;
    current.next = previous;
    previous = current;
    current = nextNode;
  }

  return previous;
}
