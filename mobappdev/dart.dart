import 'Student.dart';
import 'Employee.dart';
import 'Human.dart';

class Main{


static bool luckyNumber(int  a){

  if((a/1000>=10)||(a/1000<1)){
    return false;
  }//условие четырехзначности
  int b=a%100~/10+a%10;
  while(a/10>10){
    a=a~/10;
  }
  if(b==(a~/10+a%10)){
    return true;
  }//универсальное решение, (убрать условие четырехзначности).

  /*if((a~/1000)+((a~/100)%10)==(a%10)+((a%100)~/10)){
    return true;
    }*/
  //компактное решение
  return false;
}


static void shift({required int a,b,c,d}){
  int temp=a;
  a=d;
  d=c;
  c=b;
  b=temp;
  print("shifted numbers $a+$b+$c+$d");
}

static void example(void Function(String) callback){
  String hi = "Hi";
  callback(hi);
}
}


void main(){

  print(Main.luckyNumber(4655));


  Main.shift(a:1,b:2,c:3,d:4);


  Main.example((String text)=>print(text+", My name is Rakhat"));

  Student1 stud = new Student1("Roma", 4, 4, 5);
  stud.details();



  Professor prof = new Professor();
  prof.defaultSettings();
  Student student = new Student();
  student.name = "Zhenya";
  prof.addStudent(student);
  prof.assignSubOrGrade(student.id, 2, 5);
  prof.assignSubOrGrade(student.id, 1, 4);
  prof.assignSubOrGrade(student.id, 2, 3);
  student.printGrades();
}