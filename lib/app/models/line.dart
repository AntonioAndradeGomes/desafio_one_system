class Line {
  final int code;
  final String name;

  Line({
    required this.code,
    required this.name,
  });

  @override
  String toString() => '$code - ${name.toUpperCase()}';
}

List<Line> LISTLINE = [
  Line(
    code: 2,
    name: 'Linha de procedimento padrão',
  ),
  Line(
    code: 3,
    name: 'Teste teste',
  ),
  Line(
    code: 6,
    name: 'Linha B',
  ),
  Line(
    code: 8,
    name: 'FAPEX - Fundação de Apoio a Pera Prodimento Rápido',
  ),
];
