void main() {

  Person person1 = Person('Alice', 25, 'Engineer');
  Person person2 = Person('Bob', 30, 'Designer');

  
  person1.printDetails();
  person2.printDetails();
}

class Person {
 
  String name;
  int age;
  String occupation;

  
  Person(this.name, this.age, this.occupation);

  
  void printDetails() {
    print('Name: $name');
    print('Age: $age');
    print('Occupation: $occupation');
    print('-------------------');
  }
}