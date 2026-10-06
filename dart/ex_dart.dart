// Question de compréhension
// Palier 1 : const is a fixed value at compile time, while final is set only once and initialized at runtime.
// Palier 2 : Dart does not allow null by default to prevent errors and crashes in a program.
// Palier 3 : named parameters do not have to be in order and can be optional, while positional parameters must be in order.
// Palier 4 : a list uses indexes to access elements, while a map uses key-value pairs.
// Palier 5 : we used final because the student's info should not change after it is set.
class Cours {
  final String nom;
  final double coefficient;
  final double note;

  const Cours(this.nom, this.coefficient, this.note);
}

void main() {
  final cours = [
    Cours('math', 2, 15),
    Cours('phy', 3, 12),
    Cours('info', 3, 18),
    Cours('eng', 1, 15),
  ];

  var total = 0.0;
  var notes = 0.0;

  for (final c in cours) {
    total += c.coefficient;
    notes += c.note * c.coefficient;
  }

  final moyenne = notes / total;
  print('Moyenne pondérée : ${moyenne.toStringAsFixed(2)}');

  var meilleureNote = cours.first;
  for (final c in cours) {
    if (c.note > meilleureNote.note) {
      meilleureNote = c;
    }
  }

  print(
    'the best course is ${meilleureNote.nom} with a note of ${meilleureNote.note}',
  );
}
