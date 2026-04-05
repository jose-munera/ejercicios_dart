//Creen una lista de mapas donde cada mapa sea una plataforma con una clave esCerrado (bool) y tiendasTerceros(bool).

List<Map<String, dynamic>> platform = [
  {'name': 'iOS', 'isClosed': true, 'permiteSideloading': false},

  {'name': 'Android', 'isClosed': false, 'permiteSideloading': true},
];

//Escriba una función que use un ciclo para analizar cada plataforma.
Map<String, dynamic> analizarPlataforma(List<Map<String, dynamic>> platform) {
  //Use un condicional complejo: Si la plataforma es cerrada y no permite sideloading, agréguenla a una nueva lista de 'Aprobado para Empresa'.
  List<Map<String, dynamic>> aprobadoEmpresa = [];

  for (var tech in platform) {
    if (tech['isClosed'] == true && tech['permiteSideloading'] == false) {
      aprobadoEmpresa.add(tech);
    }
  }
  return {'Aprobadas': aprobadoEmpresa};
}

void main() {
  var resultado = analizarPlataforma(platform);
  var lista = resultado['Aprobadas'];

  if (lista.isEmpty) {
    print('NO PLATFORMS APPROVED.');
  } else {
    print('=== APPROVED PLATFORMS ===\n');

    lista.forEach((tech) {
      print('Nombre: ${tech['name']}');
      print('Is Closed: ${tech['isClosed']}');
      print('Allow Sideloading: ${tech['permiteSideloading']}');
      print('-------------------------');
    });
  }
}