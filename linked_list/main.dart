import 'package:tic_toe_toe/linked_list/Challenge2_find_middle_node.dart';
import 'package:tic_toe_toe/linked_list/Challenge3_reverse_linked_list.dart';
import 'package:tic_toe_toe/linked_list/challenge1_print_reverse.dart';
import 'package:tic_toe_toe/linked_list/challenge4_remove_all_occurrences.dart';
import 'package:tic_toe_toe/linked_list/linked_list.dart';

void main() {
  LinkedList<int> list = LinkedList();
  list.append(1);
  list.append(2);
  list.append(3);
  list.append(2);
  list.append(4);

  print('Original List:');
  list.printList();

  print('\nPrint in Reverse:');
  printInReverse(list.head);

  print('\nMiddle Node:');
  print(findMiddleNode(list.head)?.value);

  print('\nReversed List:');
  Node<int>? reversed = reverseList(list.head);
  printInReverse(reversed);

  print('\nAfter Removing 2s:');
  Node<int>? cleaned = removeAllOccurrences(reversed, 2);
  printInReverse(cleaned);
}
