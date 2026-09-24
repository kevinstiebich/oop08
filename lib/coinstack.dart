/// Represents a stack of coins.
class CoinStack {
  /// All coins in this stack.
  List<int> coins;

  /// Total value of the stack.
  int get value => coins.fold(0, (a, b) => a + b);

  /// Represents a stack of coins.
  /// [coins]: All coins in this stack.
  CoinStack({required this.coins});

  /// Compares the total value of 2 stacks.
  bool operator >(Object other) {
    if (other is CoinStack) {
      return value > other.value;
    } else {
      return false;
    }
  }

  /// Compares the total value of 2 stacks.
  bool operator <(Object other) {
    if (other is CoinStack) {
      return value < other.value;
    } else {
      return false;
    }
  }

  /// Compares the total value of 2 stacks, or if they've the same value.
  bool operator >=(Object other) {
    if (other is CoinStack) {
      return value >= other.value;
    } else {
      return false;
    }
  }

  /// Compares the total value of 2 stacks, or if they've the same value.
  bool operator <=(Object other) {
    if (other is CoinStack) {
      return value <= other.value;
    } else {
      return false;
    }
  }

  @override
  bool operator ==(Object other) {
    if (other is CoinStack) {
      return value == other.value;
    } else {
      return false;
    }
  }

  @override
  int get hashCode => Object.hash(value, 0);

  /// Adds to 2 stacks together.
  CoinStack operator +(CoinStack other) {
    return CoinStack(coins: [...coins, ...other.coins]);
  }

  /// Subtracts on stack from another.
  CoinStack operator -(CoinStack other) {
    if (value > other.value) {
      return CoinStack(coins: [...coins, ...other.coins]);
    } else {
      return CoinStack(coins: [0]);
    }
  }
}
