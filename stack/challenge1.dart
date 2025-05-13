void reverseList(List<int> items) {
  List<int> stack = [];

  // Push all elements to stack
  for (var item in items) {
    stack.add(item);
  }

  // Pop all elements and print them
  while (stack.isNotEmpty) {
    print(stack.removeLast());
  }
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  print('Original List: $numbers');
  print('Reversed List:');
  reverseList(numbers);
}
