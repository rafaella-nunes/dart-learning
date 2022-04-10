void main(){
  var person = new Person();
  person.firstName = 'Rafaella';
  person.printName();
}

class Person{
  String firstName = '';

  printName(){
    print(this.firstName);
  }
}