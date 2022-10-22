package com.greatlearning.student.service;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.greatlearning.student.entity.Student;

@Repository
public class StudentServiceImpl implements StudentService{
	
	private SessionFactory sessionFactory;
	
	private Session session;
	
	@Autowired
	StudentServiceImpl(SessionFactory sessionFactory){
		this.sessionFactory = sessionFactory;
		try {
			this.session = sessionFactory.getCurrentSession();
		} catch(HibernateException e) {
			this.session = sessionFactory.openSession();
		}
	}

	@Transactional
	public List<Student> findAll() {
		Transaction tx = session.beginTransaction();
		List<Student> student = session.createQuery("from Student").list();
		tx.commit();
		return student;
	}

	@Transactional
	public Student findById(int Id) {
		Student student = new Student();
		Transaction tx = session.beginTransaction();
		student = session.get(Student.class, Id);
		tx.commit();
		return student;
	}

	@Transactional
	public void save(Student student) {
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(student);
		tx.commit();
	}

	@Transactional
	public void deleteById(int id) {
		Transaction tx = session.beginTransaction();
		Student student = session.get(Student.class, id);
		session.delete(student);
		tx.commit();		
	}

}
