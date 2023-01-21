class Company {
  final int code;
  final String name;

  Company({
    required this.code,
    required this.name,
  });

  @override
  String toString() => '$code - ${name.toUpperCase()}';
}

List<Company> LISTCOMPANY = [
  Company(
    code: 1,
    name: 'Medicor Matriz',
  ),
  Company(
    code: 2,
    name: 'Medicor Galpao',
  ),
  Company(
    code: 3,
    name: 'Medicor Recife',
  ),
  Company(
    code: 4,
    name: 'Medicor Aracaju',
  ),
  Company(
    code: 5,
    name: 'Medicor Maceió',
  ),
  Company(
    code: 6,
    name: 'Elevemed',
  ),
  Company(
    code: 7,
    name: 'Elevemed mg',
  ),
  Company(
    code: 8,
    name: 'Medicor Natal',
  ),
  Company(
    code: 9,
    name: 'Medicor Fortaleza',
  ),
];
