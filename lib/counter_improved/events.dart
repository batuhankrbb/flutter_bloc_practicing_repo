abstract class ImprovedCounterEvent {}

class ImprovedCounterIncrease extends ImprovedCounterEvent {}

class ImprovedCounterDecrease extends ImprovedCounterEvent {}

class ImprovedCounterSuperIncrease extends ImprovedCounterEvent {}

class ImprovedCounterSuperDecrease extends ImprovedCounterEvent {}

class ImprovedCounterChangeName extends ImprovedCounterEvent {
  String name;
  ImprovedCounterChangeName(this.name);
}
