class CoinStack {
  List<int> coins;
  int get value => coins.fold(0, (a, b) => a + b);

  CoinStack({required this.coins});

  bool operator >(Object other) {
    if (other is CoinStack) {
      return value > other.value;
    } else {
      return false;
    }
  }

  bool operator <(Object other) {
    if (other is CoinStack) {
      return value < other.value;
    } else {
      return false;
    }
  }

  bool operator >=(Object other) {
    if (other is CoinStack) {
      return value >= other.value;
    } else {
      return false;
    }
  }

  bool operator <=(Object other) {
    if (other is CoinStack) {
      return value <= other.value;
    } else {
      return false;
    }
  }

  bool operator ==(Object other) {
    if (other is CoinStack) {
      return value == other.value;
    } else {
      return false;
    }
  }

  CoinStack operator +(CoinStack other) {
    return CoinStack(coins: [...coins, ...other.coins]);
  }

  CoinStack operator -(CoinStack other) {
    if (value > other.value) {
      return CoinStack(coins: [...coins, ...other.coins]);
    } else {
      return CoinStack(coins: [0]);
    }
  }
}
