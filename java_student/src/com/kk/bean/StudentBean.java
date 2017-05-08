package com.kk.bean;

import java.util.HashMap;
import java.util.Map;

public class StudentBean {
	private int id;
	private String name;
	private int   age;
	private String sex;
	private String email;
	private String cellPhone;
	
	private Map<String, String> errors = new HashMap<String,String>();
	
	
	public Map<String, String> getErrors() {
		return errors;
	}
	public void setErrors(Map<String, String> errors) {
		this.errors = errors;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCellPhone() {
		return cellPhone;
	}
	public void setCellPhone(String cellPhone) {
		this.cellPhone = cellPhone;
	}
	
	public boolean validate(){
	        
	        //��֤����
	    if(name == "" || name == null){
	        errors.put("name", "�û��������벻��Ϊ��");
	        System.out.println("�û��������벻��Ϊ��");
	    }else {
	        if(name.length() < 3 || name.length() > 8){
	            errors.put("name","���ֳ�����3-8֮��");
	            System.out.println("���ֳ�����3-8֮��");
	        }
	    }
	    /**
	     * ��������֤�Ժ��ٽ�������
	     */
	    //���errorsΪ�գ�˵��������ȷ��
	    return errors.isEmpty();
	}

	
	 @Override
	 public String toString() {
	        return "StudentFromBean [id=" + id + ", name=" + name +",sex=" + sex + ",age=" + age +", cellphone="
	                + cellPhone + ", email=" + email +",errors=" + errors+"]";
	    }

	
}
