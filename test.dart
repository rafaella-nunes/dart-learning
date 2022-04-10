void main(){
  var name = myName();

  print('my name is $name');
  print('my name has ${name.length} characters');
}

String myName(){
  return 'rafi';
}