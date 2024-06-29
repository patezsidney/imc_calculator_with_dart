class Person {
  String _name = "";
  double _height = 0;
  double _weight = 0;

  Person(this._name, this._height, this._weight);

  void setName(String name) => _name = name;

  void setHeight(double height) => _height = height;

  void setWeight(double weight) => _weight = weight;

  String getName() => _name;

  double getHeight() => _height;

  double getWeigth() => _weight;
}
