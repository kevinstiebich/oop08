import "coinstack.dart";

void main() {
  var stack1 = CoinStack(coins: [1, 2, 5, 10]);
  var stack2 = CoinStack(coins: [5, 10, 20, 10]);
  var stack3 = stack1 - stack2;

  print('${stack3.value < stack1.value}');
}
