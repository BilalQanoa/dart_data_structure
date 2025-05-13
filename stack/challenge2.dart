bool isParenthesesBalanced(String input) {
  List<String> stack = [];

  for (var char in input.split('')) {
    if (char == '(') {
      stack.add(char);
    } else if (char == ')') {
      if (stack.isEmpty) {
        return false;
      }
      stack.removeLast();
    }
  }

  return stack.isEmpty;
}

void main() {
  print(isParenthesesBalanced("(hello(world))")); // true
  print(isParenthesesBalanced("(hello(world)"));   // false
  print(isParenthesesBalanced("(()())"));          // true
  print(isParenthesesBalanced(")("));              // false
}
