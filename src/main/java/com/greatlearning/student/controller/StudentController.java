package com.greatlearning.student.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.greatlearning.student.entity.Student;
import com.greatlearning.student.service.StudentService;

@Controller
@RequestMapping("/students")
public class StudentController {

	@Autowired
	private StudentService studentService;

	@RequestMapping("/list")
	public String listOfStudent(Model model) {
		List<Student> student = studentService.findAll();
		model.addAttribute("students", student);
		return "StudentList";
	}

	@RequestMapping("/studentForm")
	public String insertStudent(@RequestParam("id") int id, Model model) {
		if (id == 0) {
			Student student = new Student();
			model.addAttribute("student", student);
		} else {
			Student student = studentService.findById(id);
			model.addAttribute("student", student);
		}
		return "StudentForm";
	}

	@RequestMapping("/save")
	public String save(@RequestParam("id") int id, @RequestParam("name") String name,
			@RequestParam("department") String department, @RequestParam("country") String country) {
		Student student;
		if (id != 0) {
			student = studentService.findById(id);
			student.setName(name);
			student.setDepartment(department);
			student.setCountry(country);
		} else {
			student = new Student(name, department, country);
		}
		studentService.save(student);
		return "redirect:/students/list";
	}
	
	@RequestMapping("/delete")
	public String delete(@RequestParam("id") int Id) {
		studentService.deleteById(Id);
		return "redirect:/students/list";

	}

	@RequestMapping("/print")
	public String print(Model model) {
		List<Student> student = studentService.findAll();
		model.addAttribute("Students", student);
		return "printPage";
	}

}
