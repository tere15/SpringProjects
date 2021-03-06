package com.base.models;
// Generated Feb 15, 2016 12:24:29 PM by Hibernate Tools 4.3.1



/**
 * RelTable generated by hbm2java
 */
public class RelTable  implements java.io.Serializable {


     private Integer id;
     private Courses course;
     private Students students;
     private Teachers teachers;

    public RelTable() {
    }

    public RelTable(Courses course, Students students, Teachers teachers) {
       this.course = course;
       this.students = students;
       this.teachers = teachers;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public Courses getCourse() {
        return this.course;
    }
    
    public void setCourse(Courses course) {
        this.course = course;
    }
    public Students getStudents() {
        return this.students;
    }
    
    public void setStudents(Students students) {
        this.students = students;
    }
    public Teachers getTeachers() {
        return this.teachers;
    }
    
    public void setTeachers(Teachers teachers) {
        this.teachers = teachers;
    }




}


