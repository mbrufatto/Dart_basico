void main(List<String> args) {
  var pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|estudante|MG',
    'Sandra Silva|40|estudante|MG',
    'Regina Verne|35|estudante|MG',
    'João Rahman|55|Jornalista|SP',
  ];

  // Baseado no array acima monte um relatório onde mostre
  // Apresente a quantidade de pacientes com mais de 20 anos
  // Agrupar os pacientes por familia(considerar o sobrenome) apresentar por familia.
  var pacientesComMaisDe20Anos = 0;
  List familias = [];

  pacientes.forEach((paciente) {
    var dadosPaciente = paciente.split("|");
    if (int.tryParse(dadosPaciente[1]) > 20) {
      pacientesComMaisDe20Anos++;
    }

    var sobrenome = dadosPaciente[0].split(" ")[1];

    if (!familias.contains(sobrenome)) {
      familias.add(sobrenome);
    }
  });

  print('Total de pacientes com mais de 20 anos: $pacientesComMaisDe20Anos');

  for (var familia in familias) {
    print('--- Família $familia');

    for (var paciente in pacientes) {
      var dadosPaciente = paciente.split("|");
      var nomeCompleto = dadosPaciente[0].split(" ");

      if (familia == nomeCompleto[1]) {
        print('|------${nomeCompleto[0]} ${nomeCompleto[1]}');
      }
    }
  }
}
