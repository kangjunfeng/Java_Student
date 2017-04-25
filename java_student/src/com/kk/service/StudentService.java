package com.kk.service;

import java.util.List;

import com.kk.entity.Student;

public interface StudentService {
	/**
	 * ���
	 * @param stu
	 * @return
	 */
	public boolean add(Student stu);
	
	/**
	 * ����
	 * @param stu
	 * @return
	 */
	public boolean update(Student stu);
	
	/**
	 * ɾ��
	 * @param stu
	 * @return
	 */
	public boolean delete(String id);
	
	/**
	 * ���ҵ���ѧ��
	 * @param id
	 * @return
	 */
	public Student findStudentById(String id);
	
	/**
	 * ��������ѧ��
	 * @return
	 */
	public List<Student> findAll();
	
}
