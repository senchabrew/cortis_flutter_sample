class Vector3 {
  final double x;
  final double y;
  final double z;

  const Vector3({
    required this.x,
    required this.y,
    required this.z
  });

  Vector3 setX(double x) {
    return Vector3(x: x, y: this.y, z: this.z);
  }

  Vector3 setY(double y) {
    return Vector3(x: this.x, y: y, z: this.z);
  }

  Vector3 setZ(double z) {
    return Vector3(x: this.x, y: this.y, z: z);
  }

  @override
  bool operator ==(Object other) =>
      other is Vector3 && other.x == x && other.y == y && other.z == z;

  @override
  int get hashCode => x.hashCode ^ y.hashCode ^ z.hashCode;
}