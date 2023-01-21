class Partner {
  final int code;
  final String name;

  Partner({
    required this.code,
    required this.name,
  });

  @override
  String toString() => '$code - ${name.toUpperCase()}';
}

List<Partner> LISTPartner = [
  Partner(
    code: 2,
    name: 'Serviço de assist medica e urgência samur',
  ),
  Partner(
    code: 3,
    name: 'Instituto Rodolfo Neirotti de Gerenc. e Pesq. LTDA',
  ),
  Partner(
    code: 6,
    name: 'Fundação Bahiana de cardiologia',
  ),
  Partner(
    code: 8,
    name: 'FAPEX - Fundação de Apoio a Pesquisa e  Extensão',
  ),
  Partner(
    code: 9,
    name: 'Real Sociedade Portuguesa Benef. 16 de Setembro',
  ),
  Partner(
    code: 10,
    name: 'Hospital e Maternidade Primavera',
  ),
  Partner(
    code: 11,
    name: 'Hospital São Lucas Medico e Hospiralar LTDA',
  ),
];
