import 'person.dart';

void main() {
  Teacher teacher = Teacher('Matsumoto Aoi', 25, true, 2);

  teacher.introduce();
  teacher.calculateSalary();

  Student student1 = Student('Suzuki Daichi', 17, false, {Subject.math: 97, Subject.physics: 99, Subject.history: 61});
  Student student2 = Student('Tanaka Haruto', 16, false, {Subject.english: 98, Subject.history: 82, Subject.math: 89});

  student1.introduce();
  student1.showMarks();
  student1.calculateAverage();

  student2.introduce();
  student2.showMarks();
  student2.calculateAverage();
}