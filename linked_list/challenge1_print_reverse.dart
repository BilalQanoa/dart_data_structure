import 'package:tic_toe_toe/linked_list/linked_list.dart';

void printInReverse<T>(Node<T>? node) {
  if (node == null) return;
  printInReverse(node.next);
  print(node.value);
}
