package com.greatlearning.student.service;

import java.util.List;

import com.greatlearning.student.entity.Student;

public interface StudentService {
	
	public List<Student> findAll();
	
	public Student findById(int Id);
	
	public void save(Student student);
	
	public void deleteById(int id);

}
