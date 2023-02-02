class Student1{
String name = "";
int subject1 = 0;
int subject2 = 0;
int subject3 = 0;
Student1(this.name, this.subject1, this.subject2, this.subject3);

double average(){
  return (subject1+subject2+subject3)/3;
}

void details(){
  print(name + " ${subject1+subject2+subject3}");
}
}

