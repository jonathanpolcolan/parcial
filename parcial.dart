class Estudiante {
  String cedula;
  String nombre;
  String apellido;
  DateTime fechaNac;
  List<double> notas;
  double promedio;
  String direccion;
  String telefono;

  // Constructor
  Estudiante({
    required this.cedula,
    required this.nombre,
    required this.apellido,
    required this.fechaNac,
    required this.notas,
    required this.direccion,
    required this.telefono,
  }) : promedio = _calcularPromedio(notas);

  // Método privado para calcular el promedio de las notas
  static double _calcularPromedio(List<double> notas) {
    if (notas.isEmpty) return 0;
    double suma = notas.reduce((a, b) => a + b);
    return suma / notas.length;
  }

  // Método para actualizar las notas y recalcular el promedio
  void actualizarNotas(List<double> nuevasNotas) {
    notas = nuevasNotas;
    promedio = _calcularPromedio(nuevasNotas);
  }

  // Método para mostrar la información del estudiante
  void mostrarInformacion() {
    print('Cédula: $cedula');
    print('Nombre: $nombre');
    print('Apellido: $apellido');
    print('Fecha de Nacimiento: ${fechaNac.toLocal()}'.split(' ')[0]);
    print('Notas: $notas');
    print('Promedio: $promedio');
    print('Dirección: $direccion');
    print('Teléfono: $telefono');
  }
}

void main() {
  // Crear una lista de notas
  List<double> notas = [95.0, 88.5, 76.0, 89.0, 91.5];

  // Crear una instancia de Estudiante
  Estudiante estudiante = Estudiante(
    cedula: '123456789',
    nombre: 'Juan',
    apellido: 'Pérez',
    fechaNac: DateTime(2000, 5, 15),
    notas: notas,
  
