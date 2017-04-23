package com.kk.dao.impl;

import java.sql.Connection;
import java.util.List;

import com.kk.dao.StudentDao;
import com.kk.entity.Student;
import com.kk.util.JdbcUtil;

public class StudentDaoImpl implements StudentDao {

	@Override
	public boolean add(Student stu) {
		// TODO Auto-generated method stub
		try {
			Connection  conn = JdbcUtil.getConnection();
			
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			
		}
		return false;
	}

	@Override
	public boolean update(Student stu) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(Student stu) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Student findStudentById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Student> findAll() {
		// TODO Auto-generated method stub
		return null;
	}
	
}
