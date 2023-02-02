import 'Human.dart';
class Employee extends Human{
  int wage = 0;
  String connectedDate = "";
  String experience = "";

}


class SubGrade{
  Subject? subject = null;
  int grade = 0;
  SubGrade(this.subject, this.grade);
}

class Subject{
  int subID = -1;
  String subName = "";

  Subject(this.subName);
}

class Student extends Human{

  int id = -1;

  List<SubGrade> subjectsGrades = [];

  void printGrades(){
    for (SubGrade s in subjectsGrades){
      print(s.subject?.subName);
      print(s.grade);
    }
  }

}

class Professor extends Employee{
  List<Subject> createdSubjects = [];
  List<Student> students = [];

  void createSubject(Subject subject){
    createdSubjects.add(subject);
    subject.subID=createdSubjects.length-1;
  }

  void addStudent(Student stud){
    students.add(stud);
    stud.id=students.length-1;
  }

  void assignSubOrGrade(int studentID, int subID, int grade){
    for(SubGrade s in students[studentID].subjectsGrades){
      if(s.subject?.subID==subID){
        s.grade=grade;
        return;
      }
      }
    students[studentID].subjectsGrades.add(new SubGrade(createdSubjects[subID], grade));
    }

  void defaultSettings(){
    createSubject(new Subject("math"));
    createSubject(new Subject("science"));
    createSubject(new Subject("history"));
  }
}